import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LowerWidget extends StatelessWidget {
  const LowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            children: [
              Container(
                height: double.infinity,
                  width: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/Mask Group.png'))
                  ),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Wed, Apr 28 • 5:30 PM',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(86, 105, 255, 1),
                          ),
                        ),
                        SvgPicture.asset('assets/bookmark.svg',width: 20,),
                      ],
                    ),
                    Text(
                      'Jo Malone London’s Mother’s\nDay Presents',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/Group 6.svg'),
                        SizedBox(width: 10),
                        Text(
                          'Radius Gallery • Santa Cruz, CA',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(116, 118, 136, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
