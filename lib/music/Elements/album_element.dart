import 'package:flutter/material.dart';

class AlbumElement extends StatefulWidget {
  final String imgPath;
  final String name;
  final String description;
  final Color color1;
  final Color color2;

  const AlbumElement({
    super.key,
    required this.imgPath,
    required this.name,
    required this.description,
    required this.color1,
    required this.color2,
  });

  @override
  State<AlbumElement> createState() => _AlbumElementState();
}

class _AlbumElementState extends State<AlbumElement>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

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
  bool _isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isPlaying = !_isPlaying;
              });
            },
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                Color interpolatedColor1 =
                    Color.lerp(widget.color1, widget.color2, _animation.value)!;
                Color interpolatedColor2 =
                    Color.lerp(widget.color2, widget.color1, _animation.value)!;
                return Container(
                  width: 132,
                  height: 132,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [interpolatedColor1, interpolatedColor2],
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      _isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 48,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Text(
            widget.description,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
