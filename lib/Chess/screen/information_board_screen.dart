import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_network/Chess/Components/game_board.dart';

import '../Components/painter.dart';
import '../Components/size_model.dart';
import 'gameplay_screen.dart';

class InformationBoard extends StatelessWidget {
  const InformationBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 50,
            blurRadius: 10,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(12, 8, 19, 1),
            Color.fromRGBO(56, 52, 63, 0),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomPaint(
          painter: X1Painter2(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(context, 20),
                    top: getHeight(context, 50),
                  ),
                  child: InkWell(
                    onTap: () {Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const GameBoard()),
                    );},
                    child: SvgPicture.asset('assets/images/svg/arrow-left.svg'),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: getHeight(context, 350),
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: getHeight(context, 50)),
                        child:
                            SvgPicture.asset('assets/images/svg/big_rook.svg'),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: getHeight(context, 50)),
                          child: SvgPicture.asset(
                              'assets/images/svg/big_bishop.svg'),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: getHeight(context, 350),
                          width: getWidth(context, 220),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(91, 101, 255, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                const Padding(
                                  padding:
                                      EdgeInsets.only(left: 10, bottom: 20),
                                  child: Text(
                                    'KING',
                                    style: TextStyle(
                                        color: Color.fromRGBO(55, 56, 85, 1),
                                        fontFamily: 'BakbakOne',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 88),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: SvgPicture.asset(
                                        'assets/images/svg/big_king.svg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              // ignore: unnecessary_const
                              const Color.fromRGBO(12, 8, 19, 0),
                              Color.fromRGBO(12, 8, 19, 1),
                            ],
                          ),
                        ),
                        width: getWidth(context, 35),
                        height: getHeight(context, 330),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: getWidth(context, 35),
                          height: getHeight(context, 330),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(12, 8, 19, 0),
                                Color.fromRGBO(12, 8, 19, 1),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(21, 17, 28, 0),
                              Color.fromRGBO(21, 17, 28, 1),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: ListView(
                            children: const [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'About the king\n',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'The king is easy to recognise: it is the tallest piece in your army and always has a cross on the top of its crown. The whole game of chess revolves around the struggle to corner and attack the king so that it is unable to escape – that\'s called checkmate – and checkmate ends the game.\n\n'
                                    'Be aware that the king, compared to most other pieces, has limited mobility, so cannot move out of danger very quickly.\n\n',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'How to move\n',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Move directly on the board to input a solution. Either click first on the start square and then on the target square. Or click on the piece, hold on to it, move it tot he target square and let go of it. The button ‘Left arrow’ takes back the move.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
