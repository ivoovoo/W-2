class CreateMessageModel {
  CreateMessageModel(
      {required this.isMine, this.text, this.imageUrl, this.isViewed = true});

  final bool isMine;
  final String? text;
  final String? imageUrl;
  final bool isViewed;
}
