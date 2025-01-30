import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuButtonWidget extends StatelessWidget {
  final int index;
  final bool isSelected;
  final Function(int) onPressed;
  final String text;
  final String assetName;

  const MenuButtonWidget({
    super.key,
    required this.index,
    required this.isSelected,
    required this.onPressed,
    required this.text,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(index), // Обработка нажатия
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: 180,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            SvgPicture.asset(
              assetName,
              color: isSelected ? Colors.blue : Colors.white,
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.blue : Colors.white,
                fontFamily: 'Raleway',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
