import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/features/chats/data_providers/chat_with_ai_data_provider/chat_with_ai_data_provider.dart';

import 'package:social_network/features/chats/logics/chat_with_ai/chat_with_ai_bloc.dart';
import 'package:social_network/features/chats/repositories/chat_with_ai_repository/chat_with_ai_repository.dart';

import '../../../auth_screen/state/auth_cubit.dart';

class ChatWithAiScreen extends StatefulWidget {
  @override
  _ChatWithAiScreenState createState() => _ChatWithAiScreenState();
}

class _ChatWithAiScreenState extends State<ChatWithAiScreen> {
  late ChatWithAiBloc chatWithAiBloc;
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];

  Future<void> _sendMessage() async {
    String message = _controller.text.trim();
    if (message.isEmpty) return;

    chatWithAiBloc.add(ChatWithAiEvent.sendMessage(_controller.text));
    setState(() {
      _messages.add({"role": "user", "text": message});
    });

    _controller.clear();
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
                      return ListView.builder(
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
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: isUser
                                    ? Colors.blueAccent
                                    : Colors.grey[800],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                msg["text"]!,
                                style: TextStyle(color: Colors.white),
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
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: "Enter message...",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onChanged: (value) {
                            BlocProvider.of<AuthCubit>(context)
                                .definitionColorsGradientIconButton(value);
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      GradientIconButton(
                          onTap: _sendMessage,
                          firstGradientColor:
                              BlocProvider.of<AuthCubit>(context)
                                  .firstGradientColorForGradientIconButton,
                          secondGradientColor:
                              BlocProvider.of<AuthCubit>(context)
                                  .secondGradientColorForGradientIconButton,
                          icon: Assets.icons.upArrow),
                      // IconButton(
                      //   icon: Icon(Icons.send, color: Colors.blue),
                      //   onPressed: _sendMessage,
                      // ),
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
