import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Models/connection_button.dart';
import '../Models/nav_bar_model.dart';
import '../Models/row_model.dart';

class OnOffWidget extends StatefulWidget {
  // final String? selectedOption;

  const OnOffWidget({
    super.key,
  });

  @override
  State<OnOffWidget> createState() => _OnOffWidgetState();
}

class _OnOffWidgetState extends State<OnOffWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              RowWidget(),
              SizedBox(
                height: 120,
              ),
              CircularButton(),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: NavBarModel(),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
