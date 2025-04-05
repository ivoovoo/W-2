import 'package:flutter/material.dart';

class GoButton extends StatelessWidget {
  const GoButton({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFFFDC71),
            Color(0xFFFFC000),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: onTap,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
            child: Text(
              textAlign: TextAlign.center,
              'GO!',
              style: TextStyle(
                fontFamily: 'font',
                fontSize: 16,
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontVariations: [
                  FontVariation.opticalSize(56),
                  FontVariation.width(110),
                  FontVariation.weight(900),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
