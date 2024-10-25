import 'package:social_network/src/features/chats/model/chat_model.dart';
import 'package:social_network/src/features/chats/model/content_model.dart';

class ChatsRepository {
  static List<ChatModel> chats = [
    ChatModel(
      nameOfChat: "@justin",
      pathToImage:
          'https://img.freepik.com/free-photo/smiley-man-relaxing-outdoors_23-2148739334.jpg',
      unreadMessages: 2,
      haveStories: false,
      messages: [
        ContentModel(
          id: 0,
          contentType: ContentType.Image,
          isSender: true,
          content:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSixcmQsARbTtwpySN--xqSmWg_p2yTCYv80A&s',
        ),
        ContentModel(
          id: 1,
          contentType: ContentType.Text,
          isSender: true,
          content: 'Привет, как дела ? Как жизнь? У меня все классно',
        ),
        ContentModel(
          id: 2,
          contentType: ContentType.Text,
          isSender: false,
          content: 'Жизнь нормально, ничего нового!',
        ),
        ContentModel(
          id: 3,
          contentType: ContentType.Sticker,
          isSender: false,
          content:
              'https://i0.wp.com/farm4.static.flickr.com/3341/3318717176_ccaf1a33ab.jpg',
        ),
      ],
    ),
    ChatModel(
      nameOfChat: '@alex',
      pathToImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6N_8OxqZ0EqJLOJpLJ-582Pi7TndrrU_ntA&s',
      unreadMessages: 1,
      haveStories: true,
      messages: [],
    ),
    ChatModel(
      nameOfChat: '@kkotovaa',
      pathToImage:
          'https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?size=626&ext=jpg&ga=GA1.1.2113030492.1729296000&semt=ais_hybrid',
      unreadMessages: 5,
      haveStories: true,
      messages: [
        ContentModel(
          id: 0,
          contentType: ContentType.Image,
          isSender: true,
          content:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSixcmQsARbTtwpySN--xqSmWg_p2yTCYv80A&s',
        ),
        ContentModel(
          id: 1,
          contentType: ContentType.Text,
          isSender: true,
          content: 'Привет, как дела ? Как жизнь? У меня все классно',
        ),
        ContentModel(
          id: 2,
          contentType: ContentType.Text,
          isSender: false,
          content: 'Жизнь нормально, ничего нового!',
        ),
        ContentModel(
          id: 3,
          contentType: ContentType.Sticker,
          isSender: false,
          content:
              'https://img.freepik.com/free-photo/confident-good-looking-beautiful-woman-with-blonde-dyed-hair-dressed-casual-clothes-looking-seriously_176420-15186.jpg',
        ),
        ContentModel(
          id: 4,
          contentType: ContentType.Audio,
          isSender: false,
          content:
              'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
        ),
      ],
    ),
    ChatModel(
      nameOfChat: '@kkotovaa',
      pathToImage:
          'https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?size=626&ext=jpg&ga=GA1.1.2113030492.1729296000&semt=ais_hybrid',
      unreadMessages: 4,
      haveStories: true,
      messages: [
        ContentModel(
          id: 0,
          contentType: ContentType.Image,
          isSender: true,
          content:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSixcmQsARbTtwpySN--xqSmWg_p2yTCYv80A&s',
        ),
        ContentModel(
          id: 1,
          contentType: ContentType.Text,
          isSender: true,
          content: 'Привет, как дела ? Как жизнь? У меня все классно',
        ),
        ContentModel(
          id: 2,
          contentType: ContentType.Text,
          isSender: false,
          content: 'Жизнь нормально, ничего нового!',
        ),
        ContentModel(
          id: 3,
          contentType: ContentType.Sticker,
          isSender: false,
          content:
              'https://img.freepik.com/free-photo/confident-good-looking-beautiful-woman-with-blonde-dyed-hair-dressed-casual-clothes-looking-seriously_176420-15186.jpg',
        ),
      ],
    ),
    ChatModel(
      nameOfChat: '@artur',
      pathToImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQiUvtYCuHnxrQ9iJVqomIDZ-QUVdSUwyKgQ&s',
      unreadMessages: 4,
      haveStories: false,
      messages: [
        ContentModel(
          id: 0,
          contentType: ContentType.Image,
          isSender: true,
          content:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSixcmQsARbTtwpySN--xqSmWg_p2yTCYv80A&s',
        ),
        ContentModel(
          id: 1,
          contentType: ContentType.Text,
          isSender: true,
          content: 'Привет, как дела ? Как жизнь? У меня все классно',
        ),
        ContentModel(
          id: 2,
          contentType: ContentType.Text,
          isSender: false,
          content: 'Жизнь нормально, ничего нового!',
        ),
        ContentModel(
          id: 3,
          contentType: ContentType.Sticker,
          isSender: false,
          content:
              'https://img.freepik.com/free-photo/confident-good-looking-beautiful-woman-with-blonde-dyed-hair-dressed-casual-clothes-looking-seriously_176420-15186.jpg',
        ),
      ],
    ),
  ];
}
