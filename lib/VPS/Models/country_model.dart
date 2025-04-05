import '/VPS/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CountryModel extends StatelessWidget {
  final String countryImage;
  final String text;
  final String status;

  const CountryModel({
    super.key,
    required this.countryImage,
    required this.text,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(countryImage),
                    const SizedBox(width: 10,),
                    Text(text,style: Style.txtStyle.copyWith(fontWeight: FontWeight.w400,fontSize: 16),),
                  ],
                ),

                Row(
                  children: [
                    SvgPicture.asset(status),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          SvgPicture.asset('assets/line.svg'),
        ],
      ),
    );
  }
}
