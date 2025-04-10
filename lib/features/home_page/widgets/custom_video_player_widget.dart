// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:social_network/core/helpers/api_requester.dart';
// import 'package:video_player/video_player.dart';
//
// class CustomVideoPlayerWidget extends StatefulWidget {
//   final String videoPath;
//   final String? thumbnail;
//   final int idVideo;
//   final Function(int viewsCount) viewsCountPlus;
//
//   const CustomVideoPlayerWidget({
//     super.key,
//     required this.videoPath,
//     required this.thumbnail,
//     required this.idVideo,
//     required this.viewsCountPlus,
//   });
//
//   @override
//   State<CustomVideoPlayerWidget> createState() =>
//       _CustomVideoPlayerWidgetState();
// }
//
// class _CustomVideoPlayerWidgetState extends State<CustomVideoPlayerWidget> {
//   late VideoPlayerController _controller;
//   bool _isInitialized = false; // Для отслеживания статуса инициализации
//   bool _isHalfWatched = false; // Флаг для текущей сессии просмотра
//   ApiRequester apiRequester = ApiRequester();
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.networkUrl(
//         Uri.parse('http://45.153.191.237${widget.videoPath}'))
//       ..initialize().then((_) {
//         setState(() {
//           _isInitialized = true;
//           _controller.play();
//         });
//       })
//       ..setLooping(true);
//
//     // Слушаем обновления позиции
//     _controller.addListener(_checkVideoPosition);
//   }
//
//   void _checkVideoPosition() {
//     // Проверяем, достигло ли видео половины
//     if (!_isHalfWatched &&
//         _controller.value.position.inSeconds >=
//             (_controller.value.duration.inSeconds)) {
//       print('NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN');
//       _incrementView();
//       _isHalfWatched = true;
//     }
//
//     // Сбрасываем флаг при окончании воспроизведения
//     if (_controller.value.position >= _controller.value.duration) {
//       _isHalfWatched = false;
//     }
//   }
//
//   Future<void> _incrementView() async {
//     final url = 'video_views/increment_view/${widget.idVideo}/';
//
//     try {
//       final response = await apiRequester.toPost(url);
//
//       if (response.statusCode == 200) {
//         debugPrint('Просмотр успешно увеличен');
//         widget.viewsCountPlus(1);
//       } else {
//         debugPrint(
//             'Ошибка увеличения просмотра: ${response.statusCode} ${response.data}');
//       }
//     } catch (e) {
//       debugPrint('Ошибка сети: $e');
//     }
//   }
//
//   @override
//   void dispose() {
//     _controller.removeListener(_checkVideoPosition);
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           if (_controller.value.isPlaying) {
//             _controller.pause();
//           } else {
//             _controller.play();
//           }
//         });
//       },
//       child: AspectRatio(
//         aspectRatio: _controller.value.aspectRatio,
//         child: _isInitialized
//             ? FittedBox(
//                 fit: BoxFit.cover,
//                 child: SizedBox(
//                   width: _controller.value.size.width,
//                   height: _controller.value.size.height,
//                   child: VideoPlayer(_controller),
//                 ),
//               )
//             : CachedNetworkImage(
//                 imageUrl: widget.thumbnail != null
//                     ? 'http://45.153.191.237${widget.thumbnail}'
//                     : 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Black_colour.jpg/450px-Black_colour.jpg',
//                 placeholder: (context, url) =>
//                     const Center(child: CircularProgressIndicator()),
//                 errorWidget: (context, url, error) =>
//                     const Center(child: Icon(Icons.error)),
//                 fit: BoxFit.cover,
//               ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../core/helpers/api_requester.dart';

class VideoPreloader {
  static final Map<String, VideoPlayerController> _preloadedControllers = {};
  static final Map<String, bool> _initializationStatus = {};

  static Future<VideoPlayerController?> preload(String url) async {
    if (_preloadedControllers.containsKey(url)) {
      return _preloadedControllers[url];
    }

    try {
      final controller = VideoPlayerController.networkUrl(Uri.parse(url));
      _preloadedControllers[url] = controller;

      await controller.initialize();
      _initializationStatus[url] = true;

      return controller;
    } catch (e) {
      debugPrint('Error preloading video $url: $e');
      _preloadedControllers.remove(url);
      return null;
    }
  }

  static void disposeController(String url) {
    if (_preloadedControllers.containsKey(url)) {
      _preloadedControllers[url]?.dispose();
      _preloadedControllers.remove(url);
      _initializationStatus.remove(url);
    }
  }

  static void disposeAll() {
    for (final controller in _preloadedControllers.values) {
      controller.dispose();
    }
    _preloadedControllers.clear();
    _initializationStatus.clear();
  }
}

class CustomVideoPlayerWidget extends StatefulWidget {
  final String videoPath;
  final String? thumbnail;
  final int idVideo;
  final Function(int viewsCount) viewsCountPlus;
  final List<String> nextVideoPaths; // Список следующих видео для предзагрузки

  const CustomVideoPlayerWidget({
    super.key,
    required this.videoPath,
    required this.thumbnail,
    required this.idVideo,
    required this.viewsCountPlus,
    required this.nextVideoPaths,
  });

  @override
  State<CustomVideoPlayerWidget> createState() =>
      _CustomVideoPlayerWidgetState();
}

class _CustomVideoPlayerWidgetState extends State<CustomVideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;
  bool _isHalfWatched = false;
  bool _isVisible = false;
  ApiRequester apiRequester = ApiRequester();
  bool _isPlaying = false;
  final _visibilityKey = UniqueKey();


  @override
  void initState() {
    super.initState();
    _initializePlayer();
    _preloadNextVideos();
  }

  void _handleVisibilityChanged(VisibilityInfo info) {
    if (!_isInitialized) return;

    final wasVisible = _isVisible;
    _isVisible = info.visibleFraction > 0.5;

    if (mounted) {
      setState(() {
        if (_isVisible && !wasVisible) {
          // При появлении на экране
          _controller.seekTo(Duration.zero); // Перемотка в начало
          _controller.play();
          _controller.addListener(_checkVideoPosition);
          _isHalfWatched = false;
        } else if (!_isVisible && wasVisible) {
          // При исчезновении с экрана
          _controller.removeListener(_checkVideoPosition);
          _controller.pause();
        }
      });
    }
  }



  Future<void> _initializePlayer() async {
    final videoUrl = 'http://45.153.191.237${widget.videoPath}';

    // Проверяем, есть ли уже предзагруженный контроллер
    final preloadedController = VideoPreloader._preloadedControllers[videoUrl];

    if (preloadedController != null &&
        VideoPreloader._initializationStatus[videoUrl] == true) {
      _controller = preloadedController;
      setState(() {
        _isInitialized = true;
        _isPlaying = true;
        _controller.seekTo(Duration.zero);
      });
      _controller.play();
    } else {
      _controller = VideoPlayerController.networkUrl(Uri.parse(videoUrl))
        ..initialize().then((_) {
          if (mounted) {
            setState(() {
              _isInitialized = true;
              _isPlaying = true;
            });
            _controller.play();
          }
        }).catchError((e) {
          debugPrint('Error initializing video: $e');
        });
    }

    _controller.setLooping(true);
    _controller.addListener(_checkVideoPosition);
  }

  void _preloadNextVideos() {
    for (final path in widget.nextVideoPaths) {
      final fullUrl = 'http://45.153.191.237$path';
      if (!VideoPreloader._preloadedControllers.containsKey(fullUrl)) {
        VideoPreloader.preload(fullUrl);
      }
    }
  }

  void _checkVideoPosition() {
    if (!_isHalfWatched &&
        _controller.value.position.inSeconds >=
            (_controller.value.duration.inSeconds / 2)) {
      _incrementView();
      _isHalfWatched = true;
    }

    if (_controller.value.position >= _controller.value.duration) {
      _isHalfWatched = false;
    }

    // Обновляем состояние воспроизведения для UI
    if (mounted && _isPlaying != _controller.value.isPlaying) {
      setState(() {
        _isPlaying = _controller.value.isPlaying;
      });
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
        debugPrint('Ошибка увеличения просмотра: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Ошибка сети: $e');
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_checkVideoPosition);
    final videoUrl = 'http://45.153.191.237${widget.videoPath}';
    if (!VideoPreloader._preloadedControllers.containsKey(videoUrl)) {
      _controller.dispose();
    }
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final videoUrl = 'http://45.153.191.237${widget.videoPath}';
    final isPreloaded = VideoPreloader._initializationStatus[videoUrl] == true;

    return Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Рассчитываем соотношение сторон контейнера и видео
            final screenRatio = constraints.maxWidth / constraints.maxHeight;
            // final videoRatio = _isInitialized
            //     ? _controller.value.aspectRatio
            //     : 16 /
            //         9; // Дефолтное соотношение, если видео не инициализировано
            final videoRatio = _controller.value.aspectRatio;
            Widget videoWidget;

            if (_isInitialized || isPreloaded) {
              ClipRect(
                child: Transform.scale(
                  scale: _getScaleFactor(constraints),
                  child: Center(
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                ),
              );
            } else {
              videoWidget = CachedNetworkImage(
                imageUrl: widget.thumbnail != null
                    ? 'http://45.153.191.237${widget.thumbnail}'
                    : 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Black_colour.jpg/450px-Black_colour.jpg',
                placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(color: Colors.white)),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error, color: Colors.white),
                fit: BoxFit.cover,
              );
            }

            // Растягиваем на весь экран с сохранением пропорций
            return Scaffold(
              backgroundColor: Colors.black,
              body: VisibilityDetector(
                key: _visibilityKey,
                onVisibilityChanged: _handleVisibilityChanged,
                child: Stack(
                  fit: StackFit.expand, // Растягиваем на весь экран
                  children: [
                    // Видео или прелоадер
                    if (_isInitialized || isPreloaded)
                      ClipRect(
                        child: Transform.scale(
                          scale: _getScaleFactor(constraints),
                          child: Center(
                            child: AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            ),
                          ),
                        ),
                      )// Просто VideoPlayer без AspectRatio
                    else
                      CachedNetworkImage(
                        imageUrl: widget.thumbnail != null
                            ? 'http://45.153.191.237${widget.thumbnail}'
                            : 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Black_colour.jpg/450px-Black_colour.jpg',
                        fit: BoxFit.fill, // Заполняем весь экран
                        placeholder: (context, url) => const Center(
                            child:
                                CircularProgressIndicator(color: Colors.white,strokeWidth: 30,)),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error, color: Colors.white),
                      ),
                
                    // Кнопка play/pause
                    if (_isInitialized || isPreloaded)
                      Positioned.fill(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            setState(() {
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                              } else {
                                _controller.play();
                              }
                            });
                          },
                          child: AnimatedOpacity(
                            opacity: _controller.value.isPlaying ? 0.0 : 1.0,
                            duration: const Duration(milliseconds: 300),
                            child: Container(
                              color: Colors.black.withOpacity(0.3),
                              child: Center(
                                child: _controller.value.isPlaying
                                    ? SvgPicture.asset(
                                        'assets/icons/play-1003-svgrepo-com.svg',
                                        color: Colors.white.withOpacity(0.5),
                                        width: 30,
                                      )
                                    : SvgPicture.asset(
                                        'assets/icons/pause-1006-svgrepo-com.svg',
                                        color: Colors.white.withOpacity(0.5),
                                        width: 30,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
    );
  }
  double _getScaleFactor(BoxConstraints constraints) {
    if (!_isInitialized) return 1.0;

    final videoRatio = _controller.value.aspectRatio;
    final screenRatio = constraints.maxWidth / constraints.maxHeight;

    // Определяем коэффициент масштабирования
    return videoRatio > screenRatio
        ? constraints.maxHeight /
        (constraints.maxWidth / videoRatio)
        : constraints.maxWidth /
        (constraints.maxHeight * videoRatio);
  }

}
