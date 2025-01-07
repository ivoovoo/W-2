import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../comments/widget/avatar_in_comments_page.dart';

class VideoContent extends StatefulWidget {
  const VideoContent({
    super.key,
    required this.videoPath,
    required this.isCommentsPage,
    required this.isSender,
    required this.haveStories,
    this.pathToImage,
    required this.onTap,
  });

  final String videoPath;
  final bool isCommentsPage;
  final bool isSender;
  final bool haveStories;
  final String? pathToImage;
  final VoidCallback onTap;

  @override
  State<VideoContent> createState() => _VideoContentState();
}

class _VideoContentState extends State<VideoContent>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;
  bool isLoading = true;
  bool isExpanded = false; // Флаг для отслеживания состояния увеличения

  late AnimationController _animationController;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    print('Initializing video player with path: ${widget.videoPath}');

    _controller = VideoPlayerController.network(
        'http://45.153.191.237${widget.videoPath}')
      ..initialize().then((_) {
        setState(() {
          isLoading = false;
        });
        _controller.setLooping(true); // Включение зацикливания
        print('Video initialized');
      }).catchError((error) {
        print('Error initializing video: $error');
      });

    // Настройка анимации
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _sizeAnimation = Tween<double>(
      begin: 200,
      end: 285,
    ).animate(_animationController);

    // Слушаем конец видео
    _controller.addListener(() {
      if (_controller.value.position ==
          _controller.value.duration - Duration(milliseconds: 1000)) {
        setState(() {
          isExpanded = false; // Возвращаем видео в маленькое состояние
          _animationController.reverse();
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _handleVideoTap() {
    setState(() {
      if (_controller.value.isPlaying) {
        // Если видео играет, ставим его на паузу и уменьшаем размер
        _controller.pause();
        if (isExpanded) {
          _animationController.reverse().then((_) {
            setState(() {
              isExpanded = false; // Флаг уменьшаем после завершения анимации
            });
          });
        }
      } else {
        if (_controller.value.position ==
            _controller.value.duration - _controller.value.duration) {
          _animationController.forward();
          _controller.play();
        } else {
          // Если видео на паузе или не играет
          if (!isExpanded) {
            // Увеличиваем видео перед воспроизведением
            _animationController.forward().then((_) {
              setState(() {
                _controller.play(); // Воспроизводим после увеличения
              });
            });
            isExpanded = true; // Обновляем флаг
          } else {
            _controller.play(); // Если уже увеличено, просто воспроизводим
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          widget.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        AvatarInCommentsPage(
          haveStories: widget.haveStories,
          isSender: widget.isSender,
          isCommentsPage: widget.isCommentsPage,
          pathToImage: widget.pathToImage,
          isLeft: true,
          onTap: widget.onTap,
        ),
        AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return GestureDetector(
              onTap: _handleVideoTap, // Обработка нажатий на весь контейнер
              child: Container(
                height: _sizeAnimation.value, // Анимация размера
                width: _sizeAnimation.value,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                ),
                child: isLoading
                    ? const CircularProgressIndicator(
                        color: Color(0xffa3eebe),
                        backgroundColor: Color(
                          0xff4c91ed,
                        ),
                      )
                    : _controller.value.isInitialized
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: SizedBox(
                                width: _controller.value.size.width,
                                height: _controller.value.size.height,
                                child: VideoPlayer(_controller),
                              ),
                            ),
                          )
                        : const Text('Ошибка при загрузке видео'),
              ),
            );
          },
        ),
        AvatarInCommentsPage(
          haveStories: widget.haveStories,
          isSender: widget.isSender,
          isCommentsPage: widget.isCommentsPage,
          pathToImage: widget.pathToImage,
          isLeft: false,
          onTap: () {},
        ),
      ],
    );
  }
}
