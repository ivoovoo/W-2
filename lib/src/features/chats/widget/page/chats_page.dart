import 'package:flutter/material.dart';
import 'package:social_network/src/features/chats/model/chat_model.dart';
import 'package:social_network/src/features/chats/repository/chats_repository.dart';
import 'package:social_network/src/features/chats/widget/page/chat_page.dart';
import 'package:social_network/src/features/chats/widget/widget.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen>
    with SingleTickerProviderStateMixin {
  List<ChatModel> chats = ChatsRepository.chats;
  late AnimationController _controller;
  int secondsLeft = 5; // Начальные 5 секунд

  @override
  void initState() {
    super.initState();
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
      duration: Duration(seconds: 5), // SnackBar исчезнет через 5 секунд
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 100),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 18.0, // горизонтальные отступы между элементами
                  runSpacing: 26.0, // вертикальные отступы между рядами
                  children: [
                    for (int i = 0; i < chats.length; i++)
                      Transform.translate(
                        offset: Offset(
                          0,
                          (i > chats.length - (chats.length % 3))
                              ? (chats.length % 3 == 1
                                  ? 0
                                  : chats.length == 2
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
                                url: chats[i].pathToImage,
                                delete: () {
                                  ChatModel chat = chats[i];
                                  int index = i;
                                  showChatDeletedSnackBar(
                                    context,
                                    () {
                                      setState(() {});
                                      chats.insert(index, chat);
                                    },
                                  );
                                  setState(() {
                                    chats.remove(chats[i]);
                                  });
                                },
                              ),
                            );
                          },
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatScreen(
                                  chatModel: chats[i],
                                ),
                              ),
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
                                  padding: chats[i].haveStories
                                      ? const EdgeInsets.all(3)
                                      : null,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
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
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      chats[i].pathToImage,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                (chats[i].unreadMessages != 0 &&
                                        chats[i].haveStories)
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
                                          '${chats[i].unreadMessages}',
                                          style: const TextStyle(
                                            fontSize: 29,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    : SizedBox(),
                                Positioned(
                                  right: 85 / 2,
                                  left: 85 / 2,
                                  bottom: -7.5,
                                  child: Container(
                                    padding: const EdgeInsets.all(3),
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xff6cffb9),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48),
                padding: EdgeInsets.symmetric(vertical: 16.0),
                backgroundColor: Color(0xffff7575),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Отменить 4',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
