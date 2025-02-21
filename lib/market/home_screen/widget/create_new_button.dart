import 'package:flutter/material.dart';
import 'package:social_network/market/home_screen/widget/plus_button.dart';

class CreateNewButton extends StatelessWidget {
  const CreateNewButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        // margin: const EdgeInsets.only(left: 16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffa7f2be),
              Color(0xff81bdf9),
            ],
          ),
        ),
        child: const Stack(
          children: [
            Center(
              child: Text(
                'NEW',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Raleway',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: PlusButton(),
            ),
          ],
        ),
      ),
    );
  }
}
