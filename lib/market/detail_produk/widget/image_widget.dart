import 'package:flutter/material.dart';
import 'package:social_network/market/map/widget/svg_icon_widget.dart';

import '../../Theme/style.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.name,
    required this.address,
    required this.pathToImage,
  });

  final String name;
  final String address;
  final String pathToImage;

  @override
  Widget build(BuildContext context) {
    var paddings = MediaQuery.paddingOf(context);
    return Container(
      height: 340,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        image: DecorationImage(
          image: NetworkImage('http://45.153.191.237$pathToImage'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.6),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: paddings.top - 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const SvgIconWidget(
                          pathToIcon: 'assets/images_of_market/back_icon.svg'),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const SvgIconWidget(
                          pathToIcon:
                              'assets/images_of_market/bookmark_icon_with_around.svg'),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Style.AppBarTxtStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      address,
                      style: Style.AppBarTxtStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(212, 212, 212, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
