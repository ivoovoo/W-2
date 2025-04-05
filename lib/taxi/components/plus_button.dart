import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({
    super.key, this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: greyColor4,
      borderRadius: BorderRadius.circular(200),
      child: InkWell(
        borderRadius: BorderRadius.circular(200),
        onTap: onTap,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child: Icon(
            CupertinoIcons.add,
            color: greyColor2,
          ),
        ),
      ),
    );
  }
}