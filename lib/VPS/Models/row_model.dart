import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Theme/theme.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({
    super.key,
  });

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'W',
              style: Style.txtStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: const Color.fromRGBO(0, 39, 254, 1),
              ),
            ),
            Text(
              ' VPN',
              style: Style.txtStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 24,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text(
              'Pro',
              style: Style.txtStyle,
            ),
            const SizedBox(
              width: 3,
            ),
            const Text(
              'Version',
              style: Style.txtStyle,
            ),
            const SizedBox(
              width: 7,
            ),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.lerp(
                              Colors.blue, Colors.purple, _animation.value)!,
                          Color.lerp(
                              Colors.purple, Colors.blue, _animation.value)!
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 4,
                            left: 5,
                            child: SvgPicture.asset('assets/crown.svg')),
                        Container(),
                      ],
                    ));
              },
            ),
          ],
        ),
      ],
    );
  }
}
