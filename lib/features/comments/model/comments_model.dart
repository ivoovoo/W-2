import 'package:social_network/features/comments/model/comment_model.dart';

class CommentsModel {
  final String pathToImage;
  final List<CommentModel> listOfComments;

  CommentsModel({
    required this.pathToImage,
    required this.listOfComments,
  });
}
