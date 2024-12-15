import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/features/chats/data_provider/chats_data_provider.dart';
import 'package:social_network/features/chats/logic/chats_bloc.dart';
import 'package:social_network/features/chats/model/chat_response_model.dart';
import 'package:social_network/features/chats/repository/chats_repository.dart';
import 'package:social_network/features/chats/widget/widget.dart';

import '../../../../core/router/app_router_names.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage>
    with SingleTickerProviderStateMixin {
  // List<ChatModel> chats = ChatsRepository.chats;
  ChatResponse chatResponse = ChatResponse(
    currentUserChats: [],
    userId: 0,
  );
  late AnimationController _controller;
  int secondsLeft = 5; // Начальные 5 секунд
  late ChatsBloc chatsBloc;

  @override
  void initState() {
    super.initState();
    chatsBloc =
        ChatsBloc(ChatsRepository(chatsDataProvider: ChatsDataProvider()))
          ..add(const ChatsEvent.init());
    // Инициализируем контроллер анимации
    _controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
  }

  @override
  void dispose() {
    // Освобождаем контроллер при удалении виджета
    _controller.dispose();
    super.dispose();
  }

  void showChatDeletedSnackBar(BuildContext context, VoidCallback onUndo) {
    // Запускаем анимацию
    _controller.reset();
    _controller.forward();

    // Создание SnackBar
    final snackBar = SnackBar(
      backgroundColor: Colors.white,
      content: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          // Вычисляем оставшиеся секунды на основе прогресса анимации
          int remainingSeconds =
              secondsLeft - (_controller.value * secondsLeft).round();
          return Row(
            children: [
              Text('$remainingSeconds',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
              SizedBox(width: 15),
              Text('Чат удалён',
                  style: TextStyle(fontSize: 14, color: Color(0xffff7575))),
            ],
          );
        },
      ),
      action: SnackBarAction(
        textColor: Colors.black,
        label: 'Отмена',
        onPressed: () {
          onUndo(); // Выполнить действие при нажатии "Отмена"
        },
      ),
      duration: Duration(seconds: 5),
    );

    // Показать SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar).closed.then((_) {
      setState(() {
        _controller.reverseDuration;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<ChatsBloc, ChatsState>(
        bloc: chatsBloc,
        builder: (context, state) {
          state.when(
            initial: () {},
            loadInProgress: () {},
            loadSuccess: (chats) {
              chatResponse = chats;
            },
            loadFailure: (error) {},
          );
          if (state is ChatsLoadInProgressState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ChatsLoadFailureState) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return Column(
              children: [
                SizedBox(height: 60.h),
                Expanded(
                  child: ListView(
                    clipBehavior: Clip.none,
                    padding: const EdgeInsets.all(16),
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 18.0,
                        // горизонтальные отступы между элементами
                        runSpacing: 26.0,
                        // вертикальные отступы между рядами
                        children: [
                          for (int i = 0;
                              i < chatResponse.currentUserChats.length;
                              i++)
                            Transform.translate(
                              offset: Offset(
                                0,
                                (i >
                                        chatResponse.currentUserChats.length -
                                            (chatResponse
                                                    .currentUserChats.length %
                                                3))
                                    ? (chatResponse.currentUserChats.length %
                                                3 ==
                                            1
                                        ? 0
                                        : chatResponse
                                                    .currentUserChats.length ==
                                                2
                                            ? -50
                                            : 0)
                                    : (i % 3 == 1)
                                        ? -50
                                        : 0,
                              ),
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onLongPress: () {
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: false,
                                    builder: (context) => DeleteBottomSheet(
                                      url:
                                          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                                      delete: () {
                                        // ChatModel chat = chats[i];
                                        // int index = i;
                                        // showChatDeletedSnackBar(
                                        //   context,
                                        //   () {
                                        //     setState(() {});
                                        //     chats.insert(index, chat);
                                        //   },
                                        // );
                                        // setState(() {
                                        //   chats.remove(chats[i]);
                                        // });
                                      },
                                    ),
                                  );
                                },
                                onTap: () {
                                  context.pushNamed(
                                    AppRouterNames.chatsDetail,
                                    extra: chatResponse.currentUserChats[i].id,
                                    pathParameters: {
                                      'type_of_chat': 'chat',
                                      'user_name': "unknown",
                                    },
                                  );
                                },
                                child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        padding: true
                                            ? const EdgeInsets.all(3)
                                            : null,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff7fbbfb),
                                              Color(0xffff8bad),
                                            ],
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Image.network(
                                            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      // (chats[i].unreadMessages != 0 &&
                                      //         chats[i].haveStories)
                                      false
                                          ? Container(
                                              alignment: Alignment.center,
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xff7fbbfb)
                                                    .withOpacity(0.25),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Text(
                                                // '${chats[i].unreadMessages}',
                                                '4',
                                                style: const TextStyle(
                                                  fontSize: 29,
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          : SizedBox(),
                                      chatResponse.currentUserChats[i].sender
                                                  .is_online ==
                                              true
                                          ? Positioned(
                                              right: 85 / 2,
                                              left: 85 / 2,
                                              bottom: -7.5,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(3),
                                                height: 15,
                                                width: 15,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xff6cffb9),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : SizedBox.shrink(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60.h),
              ],
            );
          }
        },
      ),
    );
  }
}
