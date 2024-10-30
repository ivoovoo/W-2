import 'package:flutter/material.dart';
import 'package:social_network/constants.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20 * rw(context),
        width: 20 * rw(context),
        padding: EdgeInsets.all(3 * rw(context)),
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Container(
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          child: const FittedBox(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ));
  }
}
