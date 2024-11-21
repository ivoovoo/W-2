// import 'package:flutter/material.dart';
// import 'package:social_network/core/utils/token_funcs.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class ChatScreen extends StatefulWidget {
//   final int chatId;
//
//   ChatScreen({this.chatId = 4});
//
//   @override
//   _ChatPageState createState() => _ChatPageState();
// }
//
// class _ChatPageState extends State<ChatScreen> {
//   late WebSocketChannel channel;
//   List<String> messages = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _connectToWebSocket();
//   }
//
//   Future<void> _connectToWebSocket() async {
//     try {
//       var token = await getToken();
//       print('TTTTTTTTTTTTTTTTTTTTTT $token TTTTTTTTTTTTTTTTTTTTTTTTTTT');
//       channel = WebSocketChannel.connect(
//         Uri.parse('ws://45.153.191.237/ws/chat/${widget.chatId}/'),
//         // Uri.parse('ws://45.153.191.237/ws/chat/${widget.chatId}/?token=$token'),
//       );
//       await channel.ready;
//       channel.stream.listen(
//         (message) {
//           print('MMMMMMMMMMMMMMMMMMMMMMMMMMM $message');
//           setState(() {
//             messages.add(message);
//           });
//         },
//         onError: (error) {
//           print('Ошибка WebSocket: $error');
//         },
//         // onDone: () {
//         //   print('WebSocket закрыт');
//         // },
//       );
//     } catch (e) {
//       print('Ошибка при подключении: $e');
//     }
//   }
//
//   @override
//   void dispose() {
//     channel.sink.close();
//     super.dispose();
//   }
//
//   void _sendMessage(String message) {
//     if (message.isNotEmpty) {
//       channel.sink.add(message);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Чат ${widget.chatId}')),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: messages.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(messages[index]),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     onSubmitted: _sendMessage,
//                     decoration: InputDecoration(labelText: 'Введите сообщение'),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.send),
//                   onPressed: () {
//                     // Отправка сообщения
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;
//
// class ChatScreen extends StatefulWidget {
//   final int chatId;
//
//   ChatScreen({this.chatId = 4});
//
//   @override
//   _ChatPageState createState() => _ChatPageState();
// }
//
// class _ChatPageState extends State<ChatScreen> {
//   late IO.Socket socket;
//   List<String> messages = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _connectToSocket();
//   }
//
//   void _connectToSocket() async {
//     try {
//       socket = IO.io(
//         'http://45.153.191.237', // URL сервера
//         IO.OptionBuilder()
//             .setTransports(['websocket']) // Использование WebSocket
//             .build(),
//       );
//
//       socket.on('message', (data) {
//         print(
//             'ПППППППППППППолучено сообщение: $data'); // Логирование полученного сообщения
//         setState(() {
//           messages.add(
//               data.toString()); // Преобразуем данные в строку перед добавлением
//         });
//       });
//
//       socket.on('error', (error) {
//         print('Ошибка: $error');
//       });
//
//       // Логируем события подключения
//       socket.on('connect', (_) {
//         print('ПППППППППППППППППППППодключено к серверу');
//       });
//
//       socket.on('disconnect', (_) {
//         print('Отключено ПППППППППППП от сервера');
//       });
//     } catch (e) {
//       print('Ошибка при подключении: $e');
//     }
//   }
//
//   @override
//   void dispose() {
//     socket.dispose(); // Закрытие соединения при уничтожении виджета
//     super.dispose();
//   }
//
//   void _sendMessage(String message) {
//     if (message.isNotEmpty) {
//       socket.emit('send_message', message); // Отправка сообщения на сервер
//       print(
//           'Отправлено сообщение: $message'); // Логируем отправленное сообщение
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Чат ${widget.chatId}')),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: messages.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(messages[index]),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     onSubmitted: (message) {
//                       _sendMessage(
//                           message); // Отправка сообщения по нажатию Enter
//                     },
//                     decoration: InputDecoration(labelText: 'Введите сообщение'),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.send),
//                   onPressed: () {
//                     // Отправка сообщения по нажатию кнопки
//                     // Вы можете использовать TextEditingController для извлечения текста
//                     // например, _controller.text
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:social_network/core/utils/token_funcs.dart';
// import 'package:social_network/features/chats/model/message_model.dart';
//
// class ChatScreen extends StatefulWidget {
//   final int chatId;
//
//   ChatScreen({required this.chatId});
//
//   @override
//   _ChatPageState createState() => _ChatPageState();
// }
//
// class _ChatPageState extends State<ChatScreen> {
//   late WebSocket socket;
//   final List<Message> messages = [];
//   final TextEditingController _controller = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     _connectToSocket();
//   }
//
//   void _connectToSocket() async {
//     try {
//       var token = await getToken();
//       print('Токен: $token');
//
//       socket = await WebSocket.connect(
//         'ws://45.153.191.237:8000/ws/chat/${widget.chatId}/',
//         headers: {
//           'Cookie': 'access_token=$token',
//         },
//       );
//       print('Подключено к серверу WebSocket');
//
//       socket.listen((data) {
//         print('Получено сообщение: $data');
//         final parsedData = json.decode(data);
//
//         // Если это история чата
//         if (parsedData['history'] != null) {
//           final history = (parsedData['history'] as List)
//               .map((e) => Message.fromJson(e))
//               .toList();
//
//           // Добавляем историю только один раз
//           setState(() {
//             if (messages.isEmpty) {
//               messages.addAll(history);
//             }
//           });
//         }
//
//         // Если это отдельное сообщение
//         if (parsedData['message'] != null) {
//           final newMessage = Message(
//             room: widget.chatId,
//             sender: 1, // ID отправителя (или получателя)
//             messageText: parsedData['message'],
//             createdAt:
//                 TimeOfDay.now().format(context), // или переданный createdAt
//           );
//
//           setState(() {
//             messages.add(newMessage);
//           });
//         }
//       }, onError: (error) {
//         print('Ошибка: $error');
//       });
//
//       socket.done.then((_) {
//         print('Соединение закрыто');
//       });
//     } catch (e) {
//       print('Ошибка при подключении: $e');
//     }
//   }
//
//   @override
//   void dispose() {
//     socket.close(); // Закрытие соединения при уничтожении виджета
//     super.dispose();
//   }
//
//   void _sendMessage(String message) {
//     if (message.isNotEmpty) {
//       // Создаем JSON объект с сообщением
//       final jsonMessage = json.encode({
//         'message': message,
//         'image': '',
//       });
//       socket.add(jsonMessage); // Отправляем JSON сообщение
//       print('Отправлено сообщение: $jsonMessage');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Чат ${widget.chatId}')),
//       body: Column(
//         children: [
//           // Используем ListView для отображения сообщений
//           Expanded(
//             child: ListView.builder(
//               itemCount: messages.length,
//               itemBuilder: (context, index) {
//                 final message = messages[index];
//                 return ListTile(
//                   title: Text(message.messageText),
//                   subtitle: Text(
//                     message.createdAt, // Отображаем время
//                     style: TextStyle(fontSize: 12, color: Colors.grey),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     onSubmitted: (message) {
//                       _sendMessage(message);
//                     },
//                     decoration: InputDecoration(labelText: 'Введите сообщение'),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.send),
//                   onPressed: () {
//                     _sendMessage(_controller.text);
//                     _controller.clear();
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:social_network/core/utils/token_funcs.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// class ChatScreen extends StatefulWidget {
//   final int? chatId;
//   final int? otherUser;
//
//   const ChatScreen({Key? key, this.chatId, this.otherUser}) : super(key: key);
//
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   late WebSocketChannel channel;
//   List<String> messages = [];
//   final TextEditingController _controller = TextEditingController();
//   bool isConnected = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _connectToWebSocket();
//   }
//
//   Future<void> _connectToWebSocket() async {
//     try {
//       final token = await getToken();
//       String url;
//
//       if (widget.chatId != null) {
//         url = 'ws://45.153.191.237/ws/chat/${widget.chatId}/?token=$token';
//       } else if (widget.otherUser != null) {
//         url =
//             'ws://45.153.191.237/ws/other_user/${widget.otherUser}/?token=$token';
//       } else {
//         throw Exception('Не указан chatId или otherUser');
//       }
//
//       print('Подключение к WebSocket: $url'); // Лог для отладки
//
//       channel = WebSocketChannel.connect(Uri.parse(url));
//
//       channel.stream.listen(
//         (message) {
//           print('Получено сообщение: $message'); // Лог для полученных сообщений
//           setState(() {
//             messages.add(message);
//           });
//         },
//         onError: (error) {
//           print('Ошибка WebSocket: $error'); // Лог для ошибок
//           setState(() {
//             messages.add('Ошибка подключения: $error');
//           });
//         },
//         onDone: () {
//           print('WebSocket закрыт');
//           setState(() {
//             isConnected = false;
//           });
//         },
//       );
//
//       setState(() {
//         isConnected = true;
//       });
//     } catch (e) {
//       print('Ошибка подключения: $e');
//       setState(() {
//         messages.add('Ошибка подключения: $e');
//         isConnected = false;
//       });
//     }
//   }
//
//   @override
//   void dispose() {
//     channel.sink.close();
//     super.dispose();
//   }
//
//   void _sendMessage(String message) {
//     if (message.trim().isNotEmpty && isConnected) {
//       try {
//         channel.sink.add(message);
//         setState(() {
//           messages.add("Вы: $message");
//         });
//         _controller.clear();
//       } catch (e) {
//         print('Ошибка отправки сообщения: $e');
//         setState(() {
//           messages.add('Ошибка отправки сообщения: $e');
//         });
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Чат')),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: messages.length,
//               itemBuilder: (context, index) => ListTile(
//                 title: Text(messages[index]),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     decoration: InputDecoration(
//                       labelText: isConnected
//                           ? 'Введите сообщение'
//                           : 'Подключение отсутствует',
//                       border: const OutlineInputBorder(),
//                       enabled: isConnected,
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.send),
//                   onPressed:
//                       isConnected ? () => _sendMessage(_controller.text) : null,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:social_network/core/utils/chat_web_socket.dart';
// import 'package:social_network/core/utils/token_funcs.dart';
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   late ChatWebSocket chatWebSocket;
//   final TextEditingController _controller = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     runWebSocket();
//   }
//
//   Future<void> runWebSocket() async {
//     String? token = await getToken();
//     if (token != null) {
//       chatWebSocket = ChatWebSocket('1', token);
//     } else {
//       print('TOKENNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNnnn');
//     }
//   }
//
//   @override
//   void dispose() {
//     chatWebSocket.close(); // Закрываем соединение при выходе
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('WebSocket Chat')),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: Center(
//               child: Text('TEXT'),
//             ),
//             // child: StreamBuilder(
//             //   stream: chatWebSocket.messages,
//             //   // Получаем сообщения из WebSocket
//             //   builder: (context, snapshot) {
//             //     if (snapshot.hasData) {
//             //       return ListTile(title: Text(snapshot.data.toString()));
//             //     } else if (snapshot.hasError) {
//             //       return Text('Ошибка: ${snapshot.error}');
//             //     } else {
//             //       return Text('Ожидание сообщений...');
//             //     }
//             //   },
//             // ),
//           ),
//           TextField(
//             controller: _controller,
//             decoration: InputDecoration(
//               labelText: 'Введите сообщение',
//               suffixIcon: IconButton(
//                 icon: Icon(Icons.send),
//                 onPressed: () {
//                   if (_controller.text.isNotEmpty) {
//                     chatWebSocket
//                         .sendMessage(_controller.text); // Отправляем сообщение
//                     _controller.clear();
//                   }
//                 },
//               ),
//             ),
//           ),
//           SizedBox(height: 100),
//         ],
//       ),
//     );
//   }
// }
