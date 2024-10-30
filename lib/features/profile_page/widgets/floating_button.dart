import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/data.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          // EdgeInsets.fromLTRB(0, 10 * rw(context), 35, 10 * rw(context)),
          EdgeInsets.all(2 * rw(context)),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [AppColors.kLightBlueColor, AppColors.kLightGreenColor]),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
    /*Align(
        alignment: Alignment.bottomRight,
        child: Container(
          padding:
              // EdgeInsets.fromLTRB(0, 10 * rw(context), 35, 10 * rw(context)),
          EdgeInsets.all(2 * rw(context)),
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                AppColors.lightBlueColor,
                AppColors.lightGreenColor
              ]),
              borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
        ));*/
  }
}
