import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RowElement extends StatefulWidget {
  final String name;
  final String svgPath;
  final String time;
  final String number;


  const RowElement({
    super.key,
    required this.name,
    required this.svgPath,
    required this.time,
    required this.number,

  });

  @override
  State<RowElement> createState() => _RowElementState();
}

class _RowElementState extends State<RowElement> {
  bool isPressed =false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isPressed =! isPressed;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isPressed?
                SizedBox(
                  height: 20,
                    width: 20,
                    child: Center(child: SvgPicture.asset('assets/icons/pause-1006-svgrepo-com.svg',color: Colors.white,width: 15,))) :
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Center(
                    child: Text(
                      widget.number,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                // Container(height:34,width:34,child: Image.asset(svgPath)),
                // SizedBox(width: 10,),
                Text(
                  widget.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  widget.time,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10,),
                // SvgPicture.asset('assets/music/Icon_Dots.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
