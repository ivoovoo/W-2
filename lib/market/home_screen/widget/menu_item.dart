import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.pathToSvgIcon,
    required this.onTap,
    this.isEmpty = true,
  });

  final String title;
  final bool isSelected;
  final String pathToSvgIcon;
  final bool isEmpty;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 16,
          right: 10,
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width / 2 - 20,
        ),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 12,
          children: [
            SvgPicture.asset(
              pathToSvgIcon,
              height: 20,
              width: 20,
              fit: BoxFit.cover,
              color: isSelected ? Colors.blue : Colors.white,
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: isSelected ? Colors.blue : Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Raleway',
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Visibility(
              visible: !isEmpty,
              child: Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff7fbbfb),
                      Color(0xffa9f5bb),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
