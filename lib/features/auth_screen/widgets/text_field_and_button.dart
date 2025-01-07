import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_network/core/constants/constants.dart';
import 'package:social_network/core/widgets/custom_gradient_button.dart';

import '../../../generated/l10n.dart';

class TextFieldAndButton extends StatefulWidget {
  const TextFieldAndButton({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.buttonOnTap,
    required this.onChanged,
    required this.isActive,
    required this.selectedGroupImage,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final void Function()? buttonOnTap;
  final void Function(String)? onChanged;
  final bool isActive;
  final Function(dynamic groupImage, File? imageFile) selectedGroupImage;

  @override
  State<TextFieldAndButton> createState() => _TextFieldAndButtonState();
}

class _TextFieldAndButtonState extends State<TextFieldAndButton> {
  final ImagePicker _picker = ImagePicker();
  File? file;

  Future<void> pickAndUploadFile() async {
    try {
      // Выбор файла из галереи
      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
      );

      if (pickedFile != null) {
        file = File(pickedFile.path);
        String fileName = pickedFile.name;

        print("Выбранный файл: $fileName");

        var groupImage = await MultipartFile.fromFile(
          file!.path,
          filename: fileName,
        );
        widget.selectedGroupImage(groupImage, file);
      } else {
        print("Файл не был выбран.");
      }
    } catch (e) {
      print("Ошибка при выборе файла: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: [
        AppColors.kBlueColor2,
        AppColors.kGreenColor2,
      ],
    ).createShader(
      const Rect.fromLTWH(0.0, 0.0, 100.0, 70.0),
    );

    return Container(
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(32.0),
        boxShadow: [
          BoxShadow(
            color: AppColors.kBlackColor.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 15,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 17.0, right: 17.0),
              child: widget.isActive
                  ? TextField(
                      onChanged: widget.onChanged,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0,
                        color: Colors.black,
                        // foreground: Paint()..shader = linearGradient,
                      ),
                      controller: widget.controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: widget.hintText,
                        hintStyle: AppStyles.kGreyColorW700(14.0),
                      ),
                    )
                  : InkWell(
                      onTap: widget.isActive ? null : pickAndUploadFile,
                      child: Center(
                        child: Text(
                          file == null ? 'Select photo' : 'Photo selected',
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                            color: Colors.black,
                            // foreground: Paint()..shader = linearGradient,
                          ),
                        ),
                      ),
                    ),
            ),
          ),
          CustomGradientButton(
            onTap: widget.buttonOnTap,
            text: S.of(context).next,
            horizontalPadding: 34.0,
            verticalPadding: 15.0,
            listColors: const [AppColors.kBlueColor1, AppColors.kGreenColor1],
            fontSize: 14.0,
          ),
        ],
      ),
    );
  }
}
