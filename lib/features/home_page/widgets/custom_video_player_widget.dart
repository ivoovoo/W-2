import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayerWidget extends StatefulWidget {
  final String videoPath;
  final String? thumbnail;
  final int idVideo;
  final Function(int viewsCount) viewsCountPlus;

  const CustomVideoPlayerWidget({
    super.key,
    required this.videoPath,
    required this.thumbnail,
    required this.idVideo,
    required this.viewsCountPlus,
  });

  @override
  State<CustomVideoPlayerWidget> createState() =>
      _CustomVideoPlayerWidgetState();
}

class _CustomVideoPlayerWidgetState extends State<CustomVideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isInitialized = false; // Для отслеживания статуса инициализации
  bool _isHalfWatched = false; // Флаг для текущей сессии просмотра
  ApiRequester apiRequester = ApiRequester();
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
        Uri.parse('http://45.153.191.237${widget.videoPath}'))
      ..initialize().then((_) {
        setState(() {
          _isInitialized = true;
          _controller.play();
        });
      })
      ..setLooping(true);

    // Слушаем обновления позиции
    _controller.addListener(_checkVideoPosition);
  }

  void _checkVideoPosition() {
    // Проверяем, достигло ли видео половины
    if (!_isHalfWatched &&
        _controller.value.position.inSeconds >=
            (_controller.value.duration.inSeconds)) {
      print('NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN');
      _incrementView();
      _isHalfWatched = true;
    }

    // Сбрасываем флаг при окончании воспроизведения
    if (_controller.value.position >= _controller.value.duration) {
      _isHalfWatched = false;
    }
  }

  Future<void> _incrementView() async {
    final url = 'video_views/increment_view/${widget.idVideo}/';

    try {
      final response = await apiRequester.toPost(url);

      if (response.statusCode == 200) {
        debugPrint('Просмотр успешно увеличен');
        widget.viewsCountPlus(1);
      } else {
        debugPrint(
            'Ошибка увеличения просмотра: ${response.statusCode} ${response.data}');
      }
    } catch (e) {
      debugPrint('Ошибка сети: $e');
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_checkVideoPosition);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (_controller.value.isPlaying) {
            _controller.pause();
          } else {
            _controller.play();
          }
        });
      },
      child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: _isInitialized
            ? FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              )
            : CachedNetworkImage(
                imageUrl: widget.thumbnail != null
                    ? 'http://45.153.191.237${widget.thumbnail}'
                    : 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Black_colour.jpg/450px-Black_colour.jpg',
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    const Center(child: Icon(Icons.error)),
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
