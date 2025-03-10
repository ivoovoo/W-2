import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
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
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _text = "Нажми на кнопку и говори";

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

      // Обновляем цвет кнопки
      BlocProvider.of<AuthCubit>(context)
          .definitionColorsGradientIconButton(_controller.text);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    chatWithAiBloc = ChatWithAiBloc(ChatWithAiRepository(
      localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
      chatWithAiDataProvider: ChatWithAiDataProvider(),
    ));
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
                      Lottie.asset(
                        'assets/json/ai_chat.json',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
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
                        loadFailure: (error) {},
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
                                    child: Text(
                                      msg["text"]!,
                                      style: TextStyle(
                                        color: isUser
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Inter',
                                      ),
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
                            controller: _controller,
                            textCapitalization: TextCapitalization.sentences,
                            // Первое слово в предложении с заглавной буквы
                            cursorColor: const Color(0xff171717),
                            decoration: InputDecoration(
                              constraints: const BoxConstraints(
                                maxHeight: 45,
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
                                child: Icon(
                                  _isListening ? Icons.mic_off : Icons.mic,
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
              ],
            );
          },
        ),
      ),
    );
  }
}
