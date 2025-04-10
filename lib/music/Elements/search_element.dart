import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchElement extends StatefulWidget {
  final Color color1;
  final Color color2;
  final String txt;

  const SearchElement(
      {super.key,
      required this.color1,
      required this.color2,
      required this.txt});

  @override
  State<SearchElement> createState() => _SearchElementState();
}

class _SearchElementState extends State<SearchElement>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          Color interpolatedColor1 =
              Color.lerp(widget.color1, widget.color2, _animation.value)!;
          Color interpolatedColor2 =
              Color.lerp(widget.color2, widget.color1, _animation.value)!;

          return GestureDetector(
            onTap: () {
              setState(() {
                isPlaying = ! isPlaying;
              });
            },
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [interpolatedColor1, interpolatedColor2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
                  // Positioned(
                  //   left: 20,
                  //   top: 65,
                  //   child: Center(
                  //   child: Text(widget.txt,style: TextStyle(
                  //     fontSize: 17,
                  //     fontWeight: FontWeight.w800,
                  //     color: Colors.white,
                  //   ),),
                  // ),),
                  Positioned(
                    right: 10,
                    top: -50,
                    child: Center(
                      child: Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: Colors.white.withOpacity(.15),
                        ),
                        child: Center(
                          child: Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white.withOpacity(.15),
                            ),
                            child: Center(
                              child: Text(
                                widget.txt,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 30,
                    child: isPlaying
                        ? SvgPicture.asset(
                            'assets/icons/pause-1006-svgrepo-com.svg',color: Colors.white.withOpacity(0.6),width: 35,)
                        : SvgPicture.asset(
                            'assets/icons/play-1003-svgrepo-com.svg',color: Colors.white.withOpacity(0.6),width: 35,),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
