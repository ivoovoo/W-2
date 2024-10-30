import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/core/widgets/top_left_dots.dart';
import 'package:social_network/data.dart';

class StaggeredGridWidget extends StatelessWidget {
  const StaggeredGridWidget(
      {required this.leftCoef,
      required this.rightCoef,
      required this.items,
      this.itemCount = 1,
      super.key});
  final double leftCoef;
  final double rightCoef;

  final List<List<String>> items;

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 40 - 8) / 2;
    final height = 353 * rw(context);

    Widget renderInfo() {
      return Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '9115',
              style: getStyle(
                  fontSize: 12,
                  height: 18 / 12,
                  fontWeight: FontWeight.w500,
                  color: HexColor('#FFFFFF')),
            ),
            const SizedBox(width: 8),
            Image.asset(
                // 'assets/eye_icon.png'
                Assets.images.eyeIcon.path),
            const SizedBox(width: 8),
            Text(
              '78',
              style: getStyle(
                  fontSize: 12,
                  height: 18 / 12,
                  fontWeight: FontWeight.w500,
                  color: HexColor('#FFFFFF')),
            ),
            const SizedBox(width: 8),
            Image.asset(
                // 'assets/message_icon.png'
                Assets.images.messageIcon.path),
          ],
        ),
      );
    }

    Widget renderColumn(double coef, List<String> items, {Widget? child}) {
      return Column(children: [
        Container(
          height: height * coef,
          width: width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  items.first,
                  fit: BoxFit.fill,
                ),
              ),
              renderInfo()
            ],
          ),
        ),
        SizedBox(height: 8 * rw(context)),
        Expanded(
            child: Container(
          width: width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  items.last,
                  fit: BoxFit.fill,
                ),
              ),
              child ?? const SizedBox(),
              renderInfo(),
            ],
          ),
        ))
      ]);
    }

    return SizedBox(
      height: height * itemCount + (itemCount - 1) * 8 * rw(context),
      child: ListView.builder(
          itemCount: itemCount,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 8 * rw(context)),
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  renderColumn(leftCoef, items[index].sublist(0, 2),
                      child: const TopLeftDots()),
                  renderColumn(rightCoef, items[index].sublist(2, 4))
                ],
              ),
            );
          }),
    );
  }
}
