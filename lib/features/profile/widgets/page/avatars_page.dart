import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../model/user_model.dart';

class AvatarsPage extends StatefulWidget {
  const AvatarsPage({
    super.key,
    required this.profilePictures,
  });

  final List<AvatarImage> profilePictures;

  @override
  State<AvatarsPage> createState() => _AvatarsPageState();
}

class _AvatarsPageState extends State<AvatarsPage> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();

    // Слушатель для отслеживания изменений страницы
    pageController.addListener(() {
      final newPage = pageController.page?.round() ?? 0;
      if (currentPage != newPage) {
        setState(() {
          currentPage = newPage;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.paddingOf(context);
    double width = MediaQuery.sizeOf(context).width;
    double widthOfDot =
        ((width - 20) - (widget.profilePictures.length - 1) * 8) /
            widget.profilePictures.length;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: padding.top),
          Expanded(
            child: Stack(
              children: [
                PageView.builder(
                  controller: pageController,
                  itemCount: widget.profilePictures.length,
                  itemBuilder: (context, index) {
                    return Image.network(
                      widget.profilePictures[index].image,
                      fit: BoxFit.fitWidth,
                    );
                  },
                ),
                widget.profilePictures.isEmpty ||
                        widget.profilePictures.length == 1
                    ? const SizedBox.shrink()
                    : Positioned(
                        right: 0,
                        left: 0,
                        top: 16,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            height: 6,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.profilePictures.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 6,
                                  width: widthOfDot,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: index == currentPage
                                        ? Colors.grey // Активный цвет
                                        : Colors.grey.withOpacity(
                                            0.3), // Неактивный цвет
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(width: 8);
                              },
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
