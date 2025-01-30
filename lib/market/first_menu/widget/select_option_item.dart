import 'package:flutter/material.dart';

class SelectOptionItem extends StatelessWidget {
  final int index;
  final bool isSelected;
  final Function(int) onPressed;
  final String selectOptionText;

  const SelectOptionItem({
    super.key,
    required this.selectOptionText,
    required this.index,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(index),
      child: Container(
        width: 90,
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: isSelected
                ? [
                    Colors.blue,
                    Colors.lightBlueAccent,
                  ]
                : [
                    Color.fromRGBO(247, 247, 247, 1),
                    Color.fromRGBO(247, 247, 247, 1),
                  ],
            begin: Alignment.bottomCenter, // Начало градиента снизу
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              selectOptionText,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: isSelected ? Colors.white : Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
