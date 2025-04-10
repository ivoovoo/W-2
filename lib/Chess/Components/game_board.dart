import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/Chess/Components/size_model.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../core/data/local_storage_keys.dart';
import '../../core/helpers/api_requester.dart';
import '../../core/router/app_router.dart';
import '../../features/profile/logic/profile_bloc.dart';
import '../../features/profile/model/user_model.dart';
import '../screen/swiper.dart';
import 'dead_piece.dart';
import 'helping_methods.dart';
import 'painter.dart';
import 'piece.dart';
import 'square.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  late ProfileBloc profileBloc;
  ApiRequester apiRequester = ApiRequester();
  late UserModel user;

  @override
  void initState() {
    profileBloc = context.read<ProfileBloc>()
      ..add(
        ProfileEvent.init(
            context.read<SharedPreferences>().getInt(LocalStorageKeys.userId)!),
      );
    super.initState();
    _initializeBoard();
    _startTimer();
  }
  late List<List<ChessPiece?>> board;

  ChessPiece? selectedPiece;
  int selectedRow = -1;
  int selectedCol = -1;

  List<List<int>> validMoves = [];

  List<ChessPiece> whitePieceTaken = [];

  List<ChessPiece> blackPieceTaken = [];

  bool isWhiteTurn = true;

  List<int> whiteKingPosition = [7, 4];
  List<int> blackKingPosition = [0, 4];
  bool checkStatus = false;
  int _seconds = 45; // Начальное значение таймера
  Timer? _timer;

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }
  void _resetTimer() {
    setState(() {
      _seconds = 45; // Сбрасываем таймер
      _timer?.cancel();
    });
    _startTimer(); // Запускаем таймер заново
  }



  void _initializeBoard() {
    List<List<ChessPiece?>> newBoard =
        List.generate(8, (index) => List.generate(8, (index) => null));
    // пешки
    for (int i = 0; i < 8; i++) {
      newBoard[1][i] = ChessPiece(
        type: ChessPieceType.pawn,
        isWhite: false,
        imagePath: 'assets/images/svg/svg-figures/пешка.svg',
      );
      newBoard[6][i] = ChessPiece(
        type: ChessPieceType.pawn,
        isWhite: true,
        imagePath: 'assets/images/svg/svg-figures/пешка.svg',
      );
    }

    // rook
    newBoard[0][0] = ChessPiece(
      type: ChessPieceType.rook,
      isWhite: false,
      imagePath: 'assets/images/svg/svg-figures/ладья.svg',
    );
    newBoard[0][7] = ChessPiece(
      type: ChessPieceType.rook,
      isWhite: false,
      imagePath: 'assets/images/svg/svg-figures/ладья.svg',
    );
    newBoard[7][0] = ChessPiece(
      type: ChessPieceType.rook,
      isWhite: true,
      imagePath: 'assets/images/svg/svg-figures/ладья.svg',
    );
    newBoard[7][7] = ChessPiece(
      type: ChessPieceType.rook,
      isWhite: true,
      imagePath: 'assets/images/svg/svg-figures/ладья.svg',
    );

    //кони
    newBoard[0][1] = ChessPiece(
      type: ChessPieceType.knight,
      isWhite: false,
      imagePath: 'assets/images/svg/svg-figures/конь.svg',
    );
    newBoard[0][6] = ChessPiece(
      type: ChessPieceType.knight,
      isWhite: false,
      imagePath: 'assets/images/svg/svg-figures/конь.svg',
    );
    newBoard[7][1] = ChessPiece(
      type: ChessPieceType.knight,
      isWhite: true,
      imagePath: 'assets/images/svg/svg-figures/конь.svg',
    );
    newBoard[7][6] = ChessPiece(
      type: ChessPieceType.knight,
      isWhite: true,
      imagePath: 'assets/images/svg/svg-figures/конь.svg',
    );

    //bishops
    newBoard[0][2] = ChessPiece(
      type: ChessPieceType.bishop,
      isWhite: false,
      imagePath: 'assets/images/svg/svg-figures/ферзь.svg',
    );
    newBoard[0][5] = ChessPiece(
      type: ChessPieceType.bishop,
      isWhite: false,
      imagePath: 'assets/images/svg/svg-figures/ферзь.svg',
    );
    newBoard[7][2] = ChessPiece(
      type: ChessPieceType.bishop,
      isWhite: true,
      imagePath: 'assets/images/svg/svg-figures/ферзь.svg',
    );
    newBoard[7][5] = ChessPiece(
      type: ChessPieceType.bishop,
      isWhite: true,
      imagePath: 'assets/images/svg/svg-figures/ферзь.svg',
    );

    //королева

    newBoard[0][3] = ChessPiece(
      type: ChessPieceType.queen,
      isWhite: false,
      imagePath: 'assets/images/svg/svg-figures/королева.svg',
    );
    newBoard[7][3] = ChessPiece(
      type: ChessPieceType.queen,
      isWhite: true,
      imagePath: 'assets/images/svg/svg-figures/королева.svg',
    );

    //короли

    newBoard[0][4] = ChessPiece(
      type: ChessPieceType.king,
      isWhite: false,
      imagePath: 'assets/images/svg/svg-figures/король.svg',
    );
    newBoard[7][4] = ChessPiece(
      type: ChessPieceType.king,
      isWhite: true,
      imagePath: 'assets/images/svg/svg-figures/король.svg',
    );

    board = newBoard;
  }

  void pieceSelected(int row, int col) {
    setState(() {
      if (selectedPiece == null && board[row][col] != null) {
        if (board[row][col]!.isWhite == isWhiteTurn) {
          selectedPiece = board[row][col];
          selectedRow = row;
          selectedCol = col;
        }
      } else if (board[row][col] != null &&
          board[row][col]!.isWhite == selectedPiece!.isWhite) {
        selectedPiece = board[row][col];
        selectedRow = row;
        selectedCol = col;
      } else if (selectedPiece != null &&
          validMoves.any((element) => element[0] == row && element[1] == col)) {
        movePiece(row, col);
      }

      validMoves = calculateRealValidMoves(
          selectedRow, selectedCol, selectedPiece, true);
    });
  }

  List<List<int>> calculateRawValidMoves(int row, int col, ChessPiece? piece) {
    List<List<int>> candidateMoves = [];

    if (piece == null) {
      return [];
    }

    int direction = piece.isWhite ? -1 : 1;
    switch (piece.type) {
      case ChessPieceType.pawn:
        if (isInBoard(row + direction, col) &&
            board[row + direction][col] == null) {
          candidateMoves.add([row + direction, col]);
        }

        if ((row == 1 && !piece.isWhite) || (row == 6 && piece.isWhite)) {
          if (isInBoard(row + 2 * direction, col) &&
              board[row + 2 * direction][col] == null &&
              board[row + direction][col] == null) {
            candidateMoves.add([row + 2 * direction, col]);
          }
        }

        if (isInBoard(row + direction, col - 1) &&
            board[row + direction][col - 1] != null &&
            board[row + direction][col - 1]!.isWhite != piece.isWhite) {
          candidateMoves.add([row + direction, col - 1]);
        }
        if (isInBoard(row + direction, col + 1) &&
            board[row + direction][col + 1] != null &&
            board[row + direction][col + 1]!.isWhite != piece.isWhite) {
          candidateMoves.add([row + direction, col + 1]);
        }

        break;
      case ChessPieceType.rook:
        var directions = [
          [-1, 0],
          [1, 0],
          [0, -1],
          [0, 1],
        ];

        for (var direction in directions) {
          var i = 1;
          while (true) {
            var newRow = row + i * direction[0];
            var newCol = col + i * direction[1];
            if (!isInBoard(newRow, newCol)) {
              break;
            }
            if (board[newRow][newCol] != null) {
              if (board[newRow][newCol]!.isWhite != piece.isWhite) {
                candidateMoves.add([newRow, newCol]);
              }
              break;
            }
            candidateMoves.add([newRow, newCol]);
            i++;
          }
        }
        break;
      case ChessPieceType.knight:
        var knightMoves = [
          [-2, -1],
          [-2, 1],
          [-1, -2],
          [-1, 2],
          [1, -2],
          [1, 2],
          [2, -1],
          [2, 1],
        ];

        for (var move in knightMoves) {
          var newRow = row + move[0];
          var newCol = col + move[1];
          if (!isInBoard(newRow, newCol)) {
            continue;
          }
          if (board[newRow][newCol] != null) {
            if (board[newRow][newCol]!.isWhite != piece.isWhite) {
              candidateMoves.add([newRow, newCol]);
            }
            continue;
          }
          candidateMoves.add([newRow, newCol]);
        }

        break;
      case ChessPieceType.bishop:
        var directions = [
          [-1, -1],
          [-1, 1],
          [1, -1],
          [1, 1],
        ];

        for (var direction in directions) {
          var i = 1;
          while (true) {
            var newRow = row + i * direction[0];
            var newCol = col + i * direction[1];
            if (!isInBoard(newRow, newCol)) {
              break;
            }
            if (board[newRow][newCol] != null) {
              if (board[newRow][newCol]!.isWhite != piece.isWhite) {
                candidateMoves.add([newRow, newCol]);
              }
              break;
            }
            candidateMoves.add([newRow, newCol]);
            i++;
          }
        }

        break;
      case ChessPieceType.queen:
        var directions = [
          [-1, 0],
          [1, 0],
          [0, -1],
          [0, 1],
          [-1, -1],
          [-1, 1],
          [1, -1],
          [1, 1],
        ];

        for (var direction in directions) {
          var i = 1;
          while (true) {
            var newRow = row + i * direction[0];
            var newCol = col + i * direction[1];
            if (!isInBoard(newRow, newCol)) {
              break;
            }
            if (board[newRow][newCol] != null) {
              if (board[newRow][newCol]!.isWhite != piece.isWhite) {
                candidateMoves.add([newRow, newCol]);
              }
              break;
            }
            candidateMoves.add([newRow, newCol]);
            i++;
          }
        }
        break;
      case ChessPieceType.king:
        var directions = [
          [-1, 0],
          [1, 0],
          [0, -1],
          [0, 1],
          [-1, -1],
          [-1, 1],
          [1, -1],
          [1, 1],
        ];

        for (var direction in directions) {
          var newRow = row + direction[0];
          var newCol = col + direction[1];
          if (!isInBoard(newRow, newCol)) {
            continue;
          }
          if (board[newRow][newCol] != null) {
            if (board[newRow][newCol]!.isWhite != piece.isWhite) {
              candidateMoves.add([newRow, newCol]);
            }
            continue;
          }
          candidateMoves.add([newRow, newCol]);
        }
        break;
      default:
    }

    return candidateMoves;
  }

  List<List<int>> calculateRealValidMoves(
      int row, int col, ChessPiece? piece, bool checkSimulation) {
    List<List<int>> realValidMoves = [];
    List<List<int>> candidateMoves = calculateRawValidMoves(row, col, piece);

    if (checkSimulation) {
      for (var move in candidateMoves) {
        int endRow = move[0];
        int endCol = move[1];

        if (simulatedMoveIsSafe(piece!, row, col, endRow, endCol)) {
          realValidMoves.add(move);
        }
      }
    } else {
      realValidMoves = candidateMoves;
    }
    return realValidMoves;
  }

  void movePiece(int newRow, int newCol) {
    if (board[newRow][newCol] != null) {
      var capturedPiece = board[newRow][newCol];
      if (capturedPiece!.isWhite) {
        whitePieceTaken.add(capturedPiece);
      } else {
        blackPieceTaken.add(capturedPiece);
      }
    }

    if (selectedPiece!.type == ChessPieceType.king) {
      if (selectedPiece!.isWhite) {
        whiteKingPosition = [newRow, newCol];
      } else {
        blackKingPosition = [newRow, newCol];
      }
    }

    board[newRow][newCol] = selectedPiece;
    board[selectedRow][selectedCol] = null;

    if (isKingInCheck(!isWhiteTurn)) {
      checkStatus = true;
    } else {
      checkStatus = false;
    }

    setState(() {
      selectedPiece = null;
      selectedRow = -1;
      selectedCol = -1;
      validMoves = [];
    });

    if (isCheckMate(!isWhiteTurn)) {
      _showCustomAlertDialog(context);
    }

    isWhiteTurn = !isWhiteTurn;
    _resetTimer();
  }

  bool isKingInCheck(bool isWhiteKing) {
    List<int> kingPosition =
        isWhiteKing ? whiteKingPosition : blackKingPosition;

    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        if (board[i][j] == null || board[i][j]!.isWhite == isWhiteKing) {
          continue;
        }

        List<List<int>> pieceValidMoves =
            calculateRealValidMoves(i, j, board[i][j], false);

        if (pieceValidMoves.any((move) =>
            move[0] == kingPosition[0] && move[1] == kingPosition[1])) {
          return true;
        }
      }
    }

    return false;
  }

  bool simulatedMoveIsSafe(
      ChessPiece piece, int startRow, int startCol, int endRow, int endCol) {
    ChessPiece? originalDestinationPiece = board[endRow][endCol];

    List<int>? originalKingPosition;
    if (piece.type == ChessPieceType.king) {
      originalKingPosition =
          piece.isWhite ? whiteKingPosition : blackKingPosition;

      if (piece.isWhite) {
        whiteKingPosition = [endRow, endCol];
      } else {
        blackKingPosition = [endRow, endCol];
      }
    }

    board[endRow][endCol] = piece;
    board[startRow][startCol] = null;

    bool kingInCheck = isKingInCheck(piece.isWhite);

    board[startRow][startCol] = piece;
    board[endRow][endCol] = originalDestinationPiece;

    if (piece.type == ChessPieceType.king) {
      if (piece.isWhite) {
        whiteKingPosition = originalKingPosition!;
      } else {
        blackKingPosition = originalKingPosition!;
      }
    }

    return !kingInCheck;
  }

  bool isCheckMate(bool isWhiteKing) {
    if (!isKingInCheck(isWhiteKing)) {
      return false;
    }

    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        if (board[i][j] == null || board[i][j]!.isWhite != isWhiteKing) {
          continue;
        }

        List<List<int>> pieceValidMoves =
            calculateRealValidMoves(i, j, board[i][j], true);

        if (pieceValidMoves.isNotEmpty) {
          return false;
        }
      }
    }

    return true;
  }

  void resetGame() {
    Navigator.pop(context);
    _initializeBoard();
    checkStatus = false;
    whitePieceTaken.clear();
    blackPieceTaken.clear();
    whiteKingPosition = [7, 4];
    blackKingPosition = [0, 4];
    isWhiteTurn = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    return BlocBuilder<ProfileBloc, ProfileState>(
        bloc: profileBloc,
        builder: (context, state) {
          state.when(
            initial: () {},
            loadInProgress: () {},
            loadSuccess: (response) {
              user = response;
            },
            signOutSuccess: () {},
            loadFailure: (error) {},
            enabledChatGpt: () {},
          );
          if (state is ProfileInitialState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProfileLoadFailureState) {
            return Center(child: Text(state.error.toString()));
          } else if (state is ProfileLoadInProgressState) {
            return const Center(child: CircularProgressIndicator());
          }

        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(12, 8, 19, 0.9),
                Color.fromRGBO(56, 52, 63, 0),
              ],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: CustomPaint(
              painter: X1Painter(),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getWidth(context, 20),
                        top: getHeight(context, 50),
                      ),
                      child: InkWell(
                        onTap: () => openFullScreenModal(context),
                        child: SvgPicture.asset('assets/images/svg/arrow-left.svg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(context, 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            // SizedBox(
                            //   height: getHeight(context, 66),
                            //   width: getWidth(context, 66),
                            //   child: const CircleAvatar(
                            //     backgroundImage:
                            //         AssetImage('assets/images/png/aishwarya.png'),
                            //     radius: 33,
                            //   ),
                            // ),
                            SizedBox(
                              height: getHeight(context, 66),
                              width: getWidth(context, 66),
                              child: ClipOval(
                                child: Image.network(
                                    user.profilePictures != null && user.profilePictures!.isNotEmpty
                                        ? user.profilePictures!.first.image
                                        : '',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              user.username,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            const Text(
                              'Level 1',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: getWidth(context, 50),
                              height: getHeight(context, 50),
                              child: SvgPicture.asset(
                                'assets/images/svg/timer.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              height: getHeight(context, 3),
                            ),
                            Countdown(
                              seconds: 45,
                              build: (BuildContext context, double time) => Text(
                                '00:${_seconds.toString().padLeft(2, '0')}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              interval: const Duration(milliseconds: 1000),
                              onFinished: _resetTimer,
                            ),
                            SizedBox(
                              height: getHeight(context, 10),
                            ),
                            Container(
                              width: getWidth(context, 94),
                              height: getHeight(context, 25),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text(
                                  'Time',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: getHeight(context, 64),
                              width: getWidth(context, 64),
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/png/vineeta.png'),
                                radius: 33,
                              ),
                            ),
                            const Text(
                              'Player',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            const Text(
                              'Level 1',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // мертвые белые

                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SwiperExample()),
                        );
                      },
                      child: ListView.builder(
                        padding: EdgeInsets.zero, // Убираем внутренние отступы
                        itemCount: whitePieceTaken.length, // Количество элементов
                        physics: const NeverScrollableScrollPhysics(), // Отключаем прокрутку
                        scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
                        itemBuilder: (context, index) => DeadPiece(
                          imagePath: whitePieceTaken[index].imagePath,
                          isWhite: true,
                        ),
                      )
                    ),
                  ),

                  Text(
                    checkStatus ? 'CHECK' : '',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),

                  Expanded(
                    flex: 7,
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 8 * 8,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 8),
                      itemBuilder: (context, index) {
                        int row = index ~/ 8;
                        int col = index % 8;

                        bool isSelected = selectedRow == row && selectedCol == col;

                        bool isValidMove = false;
                        for (var position in validMoves) {
                          if (position[0] == row && position[1] == col) {
                            isValidMove = true;
                          }
                        }
                        return Square(
                          isWhite: isWhite(index),
                          piece: board[row][col],
                          isSelected: isSelected,
                          isValidMove: isValidMove,
                          onTap: () => pieceSelected(row, col),
                        );
                      },
                    ),
                  ),

                  // мертвые черные

                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SwiperExample()),
                        );
                      },
                      child: ListView.builder(
                        padding: EdgeInsets.zero, // Убираем внутренние отступы
                        itemCount: blackPieceTaken.length, // Количество элементов
                        physics: const NeverScrollableScrollPhysics(), // Отключаем прокрутку
                        scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
                        itemBuilder: (context, index) => DeadPiece(
                          imagePath: blackPieceTaken[index].imagePath,
                          isWhite: false,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }

  void _showCustomAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color.fromRGBO(39, 28, 62, 0.9019607843137255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          // Закругленные углы
          contentPadding: EdgeInsets.all(20.0),
          // Отступы внутри AlertDialog
          content: Column(
            mainAxisSize: MainAxisSize.min, // Минимальный размер по высоте
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CHECK MATE',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30), // Отступ между текстом и кнопкой
              GestureDetector(
                onTap: resetGame,
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(49, 33, 78, 1.0),
                        Color.fromRGBO(28, 11, 66, 0.9019607843137255),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Restart!',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
