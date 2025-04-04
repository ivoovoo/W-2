import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:social_network/features/call_screen/call_screen.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:social_network/core/core.dart';
import 'package:social_network/features/chats/data_providers/chat_with_ai_data_provider/chat_with_ai_data_provider.dart';

import 'package:social_network/features/chats/logics/chat_with_ai/chat_with_ai_bloc.dart';
import 'package:social_network/features/chats/repositories/chat_with_ai_repository/chat_with_ai_repository.dart';

import '../../../../generated/l10n.dart';
import '../../../auth_screen/state/auth_cubit.dart';

class ChatWithAiScreen extends StatefulWidget {
  @override
  _ChatWithAiScreenState createState() => _ChatWithAiScreenState();
}

class _ChatWithAiScreenState extends State<ChatWithAiScreen> {
  late ChatWithAiBloc chatWithAiBloc;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _text = "Нажми на кнопку и говори";
  List<String> answers = [
    'Great news! We’re powering up our neural network for a fully free and empowering chat experience. Stay tuned! ',
    'Your experience is our top priority—our neural network is nearly set up to deliver unlimited, free conversations just for you. ',
    'Positive vibes all around! We’re fine-tuning our neural network to bring you a seamless, cost-free chat journey. Get ready! ',
    'Empowerment is on the way! Our neural network is being perfected to offer you endless free interactions. You’re awesome! ',
    'We believe in free and uplifting connections! Our neural network is almost ready to spark brilliant conversations with you. ',
    'Good energy flows here—our neural network is gearing up to deliver an enriching, free chat experience. Magic is near! ',
    'Infinite possibilities are coming your way! We’re optimizing our neural network to offer a vibrant, free chat platform. Keep shining! ',
    'A brighter chat experience is on the horizon! Our neural network is nearly set up, ready to provide you with limitless, free inspiration. ',
    'Every message brings empowerment! Our neural network is refining its skills to give you a dynamic, cost-free chat experience. Your journey begins soon! ',
    'Ready for transformation? Our neural network is tuning up to deliver limitless, free conversation moments just for you. Stay excited! ',
    'Your free, inspiring chat experience is almost here—our neural network is working to unlock endless possibilities. Let’s go! ',
    'We’re on the brink of a chat revolution! Our neural network is powering up to offer you a truly free and uplifting conversation space. Keep the energy high! ',
    'Bright ideas are coming! Our neural network is nearly ready to provide a joyful, free chat experience that fuels your creativity. Shine on! ',
    'The future of conversation is almost here—our neural network is optimizing to deliver an amazing, unlimited chat experience just for you. Keep that positive energy flowing! ',
    'Great things are coming your way! Our neural network is being fine-tuned to open up a world of free, empowering chat moments. Excitement awaits! ',
  ];

  @override
  void initState() {
    super.initState();
    _requestMicrophonePermission();
  }

  Future<void> _requestMicrophonePermission() async {
    var status = await Permission.microphone.request();
    if (status.isDenied) {
      // Разрешение отклонено
      print("Доступ к микрофону отклонен");
    }
  }

  void _startListening() async {
    bool available = await _speech.initialize(
      onStatus: (status) => print("Статус: $status"),
      onError: (errorNotification) => print("Ошибка: $errorNotification"),
    );

    if (available) {
      setState(() => _isListening = true);
      _speech.listen(
        onResult: (result) {
          // Сохраняем распознанный текст, но не обновляем UI
          _controller.text = result.recognizedWords;
        },
      );
    }
  }

  void _stopListening(BuildContext context) {
    _speech.stop();
    setState(() {
      _isListening = false;
    });

    // Обновляем цвет кнопки после установки текста
    BlocProvider.of<AuthCubit>(context)
        .definitionColorsGradientIconButton(_controller.text);
  }

  void _sendMessage(BuildContext context) {
    String message = _controller.text.trim();
    if (message.isNotEmpty) {
      chatWithAiBloc.add(ChatWithAiEvent.sendMessage(_controller.text));
      setState(() {
        _messages.add({"role": "user", "text": message});
      });

      _controller.clear();

      BlocProvider.of<AuthCubit>(context)
          .definitionColorsGradientIconButton(_controller.text);
      _scrollToBottom();
    }
  }

  void _scrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 50));
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        curve: Curves.ease,
        duration: const Duration(milliseconds: 700),
      );
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    chatWithAiBloc = ChatWithAiBloc(ChatWithAiRepository(
      localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
      chatWithAiDataProvider: ChatWithAiDataProvider(),
    ));
    setState(() {
      _scrollToBottom();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider<AuthCubit>(
        create: (context) => AuthCubit(),
        child: BlocBuilder<AuthCubit, AuthhState>(
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(height: MediaQuery.paddingOf(context).top),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 22,
                        ),
                        onPressed: () {
                          context.pop();
                        },
                      ),
                      const Column(
                        children: [
                          Text(
                            '@AI',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000),
                              fontSize: 20,
                              fontFamily: 'Inter',
                            ),
                          ),
                          // Text(
                          //   S.of(context).online,
                          //   style: const TextStyle(
                          //     fontSize: 14,
                          //     fontWeight: FontWeight.w500,
                          //     color: Color(0xff00ffd1),
                          //     fontFamily: 'Inter',
                          //   ),
                          // ),
                        ],
                      ),
                      GestureDetector(
                        child: Lottie.asset(
                          'assets/json/ai_chat.json',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const CallScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: BlocConsumer<ChatWithAiBloc, ChatWithAiState>(
                    bloc: chatWithAiBloc,
                    listener: (BuildContext context, ChatWithAiState state) {
                      state.when(
                        initial: () {},
                        loadInProgress: () {},
                        loadSuccess: (response) {
                          setState(() {
                            _messages.add({"role": "bot", "text": response});
                          });
                        },
                        loadFailure: (error) {
                          String randomAnswer = answers.getRandomElement();
                          _messages.add({"role": "bot", "text": randomAnswer});
                        },
                      );
                    },
                    builder: (context, state) {
                      return _messages.isEmpty
                          ? Center(
                              child: Lottie.asset(
                                'assets/json/ai_empty_chat.json',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                            )
                          : ListView.builder(
                              controller: _scrollController,
                              padding: const EdgeInsets.all(10),
                              itemCount: _messages.length,
                              itemBuilder: (context, index) {
                                final msg = _messages[index];
                                bool isUser = msg["role"] == "user";

                                return Align(
                                  alignment: isUser
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      gradient: isUser
                                          ? const LinearGradient(
                                              colors: [
                                                Color(0xff478cf0),
                                                Color(0xffa9f5bb),
                                              ],
                                            )
                                          : null,
                                      color: isUser ? null : Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: isUser
                                          ? null
                                          : [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.05),
                                                offset: const Offset(0, 0),
                                                blurRadius: 15,
                                              ),
                                            ],
                                    ),
                                    child: isUser
                                        ? Text(
                                            msg["text"]!,
                                            style: TextStyle(
                                              color: isUser
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Inter',
                                            ),
                                          )
                                        : ChatMessageItem(
                                            key: ValueKey(msg['id'] ?? index),
                                            // Уникальный ключ для анимации
                                            message: msg["text"]!,
                                            isUser: isUser,
                                            onTextUpdate: _scrollToBottom,
                                            scrollController: _scrollController,
                                            showTypingAnimation: !isUser &&
                                                index == _messages.length - 1,
                                          ),
                                  ),
                                );
                              },
                            );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                offset: const Offset(0, 0),
                                blurRadius: 15,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(37),
                          ),
                          child: TextField(
                            style: TextStyle(
                                color:
                                    _isListening ? Colors.grey : Colors.black),
                            controller: _controller,
                            maxLines: null,
                            minLines: 1,
                            textCapitalization: TextCapitalization.sentences,
                            // Первое слово в предложении с заглавной буквы
                            cursorColor: const Color(0xff171717),
                            decoration: InputDecoration(
                              constraints: const BoxConstraints(
                                maxHeight: 140,
                                minHeight: 40,
                                minWidth: double.infinity,
                              ),
                              hintText: S.of(context).my_message,
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Color(0xff7c7c7c),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(37),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(37),
                                borderSide: BorderSide.none,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(37),
                                borderSide: BorderSide.none,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(37),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                            ),
                            keyboardType: TextInputType.multiline,
                            textInputAction: Platform.isIOS
                                ? TextInputAction.done
                                : TextInputAction.newline,
                            onChanged: (value) {
                              BlocProvider.of<AuthCubit>(context)
                                  .definitionColorsGradientIconButton(value);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      _controller.text.isEmpty
                          ? Container(
                              padding: const EdgeInsets.all(11),
                              height: 45,
                              width: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: _isListening
                                      ? [
                                          AppColors.kBlueColor1,
                                          AppColors.kGreenColor1,
                                        ]
                                      : [
                                          AppColors.kGreyColor1,
                                          AppColors.kGreyColor2,
                                        ],
                                ),
                              ),
                              child: InkWell(
                                onTap: () {
                                  _isListening
                                      ? _stopListening(context)
                                      : _startListening();
                                },
                                child: const Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : GradientIconButton(
                              onTap: () {
                                _sendMessage(context);
                              },
                              firstGradientColor:
                                  BlocProvider.of<AuthCubit>(context)
                                      .firstGradientColorForGradientIconButton,
                              secondGradientColor:
                                  BlocProvider.of<AuthCubit>(context)
                                      .secondGradientColorForGradientIconButton,
                              icon: Assets.icons.upArrow),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

extension RandomElement<T> on List<T> {
  T getRandomElement() {
    if (isEmpty) throw Exception("Список пуст");
    return this[Random().nextInt(length)];
  }
}

class ChatMessageItem extends StatefulWidget {
  final String message;
  final bool isUser;
  final bool showTypingAnimation;
  final VoidCallback onTextUpdate;
  final ScrollController scrollController;

  const ChatMessageItem({
    required this.message,
    required this.isUser,
    required this.showTypingAnimation,
    Key? key,
    required this.onTextUpdate,
    required this.scrollController,
  }) : super(key: key);

  @override
  _ChatMessageItemState createState() => _ChatMessageItemState();
}

class _ChatMessageItemState extends State<ChatMessageItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _typingController;
  String _displayText = "";
  int _currentLength = 0;

  @override
  void initState() {
    super.initState();

    if (widget.showTypingAnimation) {
      _typingController = AnimationController(
        duration: Duration(milliseconds: widget.message.length * 50),
        vsync: this,
      )..addListener(_updateText);

      _typingController.forward();
    } else {
      _displayText = widget.message;
    }
  }

  void _updateText() {
    final newLength = (widget.message.length * _typingController.value).round();

    if (newLength > _currentLength) {
      setState(() {
        _displayText = widget.message.substring(0, newLength);
        _currentLength = newLength;
      });
      if (newLength % 3 == 0 || newLength == widget.message.length) {
        widget.onTextUpdate();
      }
    }
  }

  @override
  void dispose() {
    if (widget.showTypingAnimation) {
      _typingController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.8,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(16),
          topRight: const Radius.circular(16),
          bottomLeft: widget.isUser
              ? const Radius.circular(16)
              : const Radius.circular(4),
          bottomRight: widget.isUser
              ? const Radius.circular(4)
              : const Radius.circular(16),
        ),
      ),
      child: Text(
        widget.showTypingAnimation ? _displayText : widget.message,
        style: TextStyle(
          fontFamily: 'RobotoMono',
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
