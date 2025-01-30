import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    required this.isFirstPage,
    required this.activeNickname,
  }) : super(key: key);

  final TextEditingController controller;
  final bool isFirstPage;
  final String hintText;
  final void Function()? buttonOnTap;
  final void Function(String)? onChanged;
  final String activeNickname;
  final bool isActive;
  final Function(dynamic groupImage, File? imageFile) selectedGroupImage;

  @override
  State<TextFieldAndButton> createState() => _TextFieldAndButtonState();
}

class _TextFieldAndButtonState extends State<TextFieldAndButton> {
  final ImagePicker _picker = ImagePicker();
  File? file;

  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

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
                      focusNode: _focusNode,
                      onChanged: widget.isFirstPage
                          ? (text) {
                              // Если пользователь удалит "@", можно вернуть его обратно
                              if (!text.startsWith("@")) {
                                widget.controller.text = "@";
                                widget.controller.selection =
                                    TextSelection.fromPosition(
                                  TextPosition(
                                      offset: widget.controller.text.length),
                                );
                              }
                            }
                          : null,
                      // onChanged: widget.onChanged,
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
                        hintText: widget.isFirstPage
                            ? _isFocused
                                ? widget.hintText
                                : widget.hintText
                            : widget.hintText,
                        // prefixText: widget.isFirstPage ? '@' : '',
                        hintStyle: AppStyles.kGreyColorW700(14.0),
                        prefixStyle: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                          color: Colors.black,
                          // foreground: Paint()..shader = linearGradient,
                        ),
                      ),
                      // inputFormatters: [
                      //   TextInputFormatter.withFunction((oldValue, newValue) {
                      //     if (!newValue.text.startsWith('@')) {
                      //       return TextEditingValue(
                      //         text: '@${newValue.text.replaceAll('@', '')}',
                      //         selection: TextSelection.collapsed(
                      //             offset: newValue.selection.end + 1),
                      //       );
                      //     }
                      //     return newValue;
                      //   }),
                      // ],
                    )
                  : InkWell(
                      onTap: widget.isActive ? null : pickAndUploadFile,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          file == null
                              ? S.of(context).select_photo
                              : S.of(context).photo_selected,
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
