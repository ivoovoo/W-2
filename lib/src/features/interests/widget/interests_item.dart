import 'package:flutter/material.dart';

class InterestsItem extends StatefulWidget {
  const InterestsItem({
    super.key,
    required this.text,
    this.isSelected = false,
    this.onClicked,
  });

  final String text;
  final bool isSelected;
  final ValueChanged<bool>? onClicked;

  @override
  State<InterestsItem> createState() => _InterestsItemState();
}

class _InterestsItemState extends State<InterestsItem> {
  late bool isClicked;

  @override
  void initState() {
    super.initState();
    isClicked = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
          widget.onClicked?.call(isClicked);
        });
      },
      child: IntrinsicWidth(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 11,
            horizontal: 20,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isClicked ? null : Colors.white,
            borderRadius: BorderRadius.circular(27),
            gradient: isClicked
                ? const LinearGradient(
                    colors: [
                      Color(0xff9586fd),
                      Color(0xff7fbbfb),
                    ],
                  )
                : null,
            boxShadow: const [
              BoxShadow(
                color: Color(0x1F8386A3), // Цвет тени с 12% непрозрачностью
                offset: Offset(0, 0), // Смещение по X и Y
                blurRadius: 10, // Радиус размытия
                spreadRadius: 0, // Радиус распространения
              ),
            ],
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              color: isClicked ? Colors.white : Color(0xff7fbbfb),
            ),
          ),
        ),
      ),
    );
  }
}
