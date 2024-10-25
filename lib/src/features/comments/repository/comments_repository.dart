import 'package:social_network/src/features/chats/model/content_model.dart';
import 'package:social_network/src/features/comments/model/comment_model.dart';
import 'package:social_network/src/features/comments/model/comments_model.dart';

class CommentsRepository {
  static CommentsModel commentsModel = CommentsModel(
    pathToImage:
        'https://img.freepik.com/free-photo/smiley-man-relaxing-outdoors_23-2148739334.jpg',
    listOfComments: [
      CommentModel(
        id: 0,
        haveStories: true,
        pathToImage:
            'https://img.freepik.com/free-photo/smiley-man-relaxing-outdoors_23-2148739334.jpg',
        contentType: ContentType.Text,
        content: "Привет🥰",
        isSender: false,
      ),
      CommentModel(
        haveStories: false,
        id: 1,
        pathToImage:
            'https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?size=626&ext=jpg&ga=GA1.1.2113030492.1729296000&semt=ais_hybrid',
        contentType: ContentType.Text,
        content: "Жизнь нормально, ничего нового!",
        isSender: false,
      ),
      CommentModel(
        id: 2,
        haveStories: true,
        pathToImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6N_8OxqZ0EqJLOJpLJ-582Pi7TndrrU_ntA&s',
        contentType: ContentType.Image,
        content:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSixcmQsARbTtwpySN--xqSmWg_p2yTCYv80A&s",
        isSender: false,
      ),
      CommentModel(
        id: 3,
        haveStories: true,
        pathToImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6N_8OxqZ0EqJLOJpLJ-582Pi7TndrrU_ntA&s',
        contentType: ContentType.Sticker,
        isSender: false,
        content:
            'https://img.freepik.com/free-photo/confident-good-looking-beautiful-woman-with-blonde-dyed-hair-dressed-casual-clothes-looking-seriously_176420-15186.jpg',
      ),
    ],
  );
}
