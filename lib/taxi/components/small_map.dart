import 'package:flutter/material.dart';

class SmallMap extends StatelessWidget {
  const SmallMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          'assets/mapsicle.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
