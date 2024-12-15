import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          CircleAvatar(
            backgroundImage: NetworkImage(url),
            radius: 39,
          ),
          const SizedBox(height: 25),
          InkWell(
            onTap: () {
              delete();
              Navigator.pop(context);
            },
            child: const Text(
              'Удалить у всех',
              style: TextStyle(
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
            child: const Text(
              'Удалить только у меня',
              style: TextStyle(
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
            child: const Text(
              'Отмена',
              style: TextStyle(
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
