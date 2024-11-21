import 'package:web_socket_channel/web_socket_channel.dart';

class ChatWebSocket {
  late WebSocketChannel channel;

  // Конструктор подключения к комнате
  ChatWebSocket(String roomId, String token) {
    // Формируем URL для подключения к WebSocket с токеном
    String url = 'ws://192.168.65.76:8000/ws/chat/$roomId/?token=$token';
    // String url = 'ws://192.168.65.76:8000/ws/chat/$roomId/';

    // Подключаемся через WebSocketChannel
    channel = WebSocketChannel.connect(Uri.parse(url));
  }

  // Отправка сообщения
  Future<void> sendMessage(String message) async {
    await channel.ready;
    channel.sink.add(message); // Отправка сообщения на сервер
  }

  // Получение сообщений
  // Stream<dynamic> get messages => channel.stream;

  // Закрытие соединения
  void close() {
    channel.sink.close();
  }
}
