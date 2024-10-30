class Media {
  int id;
  String mediaPath;
  int likes;
  int views;
  String thumbnail;
  bool isVideo;
  bool isImage;

  Media({
    required this.id,
    required this.mediaPath,
    this.thumbnail = '',
    this.likes = 0,
    this.views = 0,
    this.isVideo = false,
    this.isImage = false,
  }) {
    _determineMediaType();
  }

  final List<String> _imageFormats = [
    '.jpg',
    '.jpeg',
    '.png',
    '.gif',
    '.bmp',
    '.webp',
    '.heic',
    '.tiff'
  ];
  final List<String> _videoFormats = [
    '.mp4',
    '.mov',
    '.avi',
    '.flv',
    '.wmv',
    '.mkv',
    '.webm'
  ];

  void _determineMediaType() {
    for (var elem in _videoFormats) {
      if (mediaPath.endsWith(elem)) {
        isVideo = true;
      }
    }
    for (var elem in _imageFormats) {
      if (mediaPath.endsWith(elem)) {
        isImage = true;
      }
    }
    if ((isVideo == false && isImage == false) ||
        (isVideo == true && isImage == true)) {
      throw Exception('Invalid media format');
    }
  }

  @override
  String toString() {
    return "\nclass Media: ${id.runtimeType} id: $id, ${mediaPath.runtimeType} mediaPath: $mediaPath, ${isVideo.runtimeType} isVideo: $isVideo, ${isImage.runtimeType} isImage: $isImage";
  }
}
