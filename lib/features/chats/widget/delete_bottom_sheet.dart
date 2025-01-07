import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../generated/l10n.dart';

class DeleteBottomSheet extends StatelessWidget {
  const DeleteBottomSheet({
    super.key,
    required this.url,
    required this.delete,
  });

  final String url;
  final VoidCallback delete;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 35),
          url.isEmpty
              ? Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff7fbbfb),
                        Color(0xffff8bad),
                      ],
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 92,
                      width: 92,
                      color: Colors.white,
                      child: Lottie.asset(
                        'assets/json/avatar.json',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : CircleAvatar(
                  backgroundImage: NetworkImage(url),
                  radius: 39,
                ),
          const SizedBox(height: 25),
          InkWell(
            onTap: () {
              delete();
              Navigator.pop(context);
            },
            child: Text(
              S.of(context).delete_for_everyone,
              style: const TextStyle(
                color: Color(0xffff7575),
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(height: 25),
          InkWell(
            onTap: () {
              delete();
              Navigator.pop(context);
            },
            child: Text(
              S.of(context).delete_for_me,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(height: 25),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              S.of(context).cancel,
              style: const TextStyle(
                color: Color(0xffc4c4c4),
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
          ),
          SizedBox(height: 60.h),
        ],
      ),
    );
  }
}
