import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Theme/theme.dart';

class ColorButtonModel extends StatefulWidget {
  final String txtMonth;
  final String txtPrice;
  final String txtCost;

  const ColorButtonModel({
    super.key,
    required this.txtMonth,
    required this.txtPrice,
    required this.txtCost,
  });

  @override
  State<ColorButtonModel> createState() => _ColorButtonModelState();
}

class _ColorButtonModelState extends State<ColorButtonModel>
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
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.lerp(Colors.blue, Colors.purple, _animation.value)!,
                Color.lerp(Colors.purple, Colors.blue, _animation.value)!
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          width: 350,
          height: 80,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.txtMonth,
                            style: Style.txtStyle.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            widget.txtPrice,
                            style: Style.txtStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: const Color.fromRGBO(255, 255, 255, 0.7),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.txtCost,
                                style: Style.txtStyle.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '\$/Month',
                                style: Style.txtStyle.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
