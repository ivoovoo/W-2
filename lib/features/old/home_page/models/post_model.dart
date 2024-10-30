class PostModel {
  PostModel(
      {required this.imageUrl,
      required this.authorName,
      required this.viewedCount,
      this.postImage,
      this.postTitle,
      this.postText,
      this.isActive = false});

  final String imageUrl;
  final String authorName;
  final int viewedCount;
  final String? postImage;
  final String? postTitle;
  final String? postText;
  final bool isActive;
}
