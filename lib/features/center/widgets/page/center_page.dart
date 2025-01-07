import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/core/helpers/api_requester.dart';

import '../../../../generated/l10n.dart';

class CenterPage extends StatefulWidget {
  const CenterPage({super.key});

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  ApiRequester apiRequester = ApiRequester();
  final ImagePicker _picker = ImagePicker();

  Future<void> uploadFile(File file, String fileName) async {
    final String url = 'create_video/';

    try {
      final formData = FormData.fromMap({
        'category_video': 1,
        'video_file': await MultipartFile.fromFile(
          file.path,
          filename: fileName,
        ),
        "created_at": '2024-12-02T12:00:00Z',
        "video_preview": "",
      });

      final String? authToken = context
          .read<SharedPreferences>()
          .getString(LocalStorageKeys.authToken);
      final String? csrfToken = context
          .read<SharedPreferences>()
          .getString(LocalStorageKeys.csrfToken);

      final response = await apiRequester.toPostWithCsrfToken(
        url,
        authToken,
        csrfToken,
        formData,
      );

      if (response.statusCode == 200) {
        print('Upload successful: ${response.data}');
      } else {
        print('Upload failed: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> pickAndUploadFile() async {
    try {
      // Выбор файла из галереи
      final XFile? pickedFile = await _picker.pickVideo(
        source: ImageSource.gallery,
      );

      if (pickedFile != null) {
        File file = File(pickedFile.path);
        String fileName = pickedFile.name;

        print("Выбранный файл: $fileName");

        // Отправляем файл на сервер
        await uploadFile(file, fileName);
      } else {
        print("Файл не был выбран.");
      }
    } catch (e) {
      print("Ошибка при выборе файла: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light));
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff7fbbfb),
              Color(0xffff8bad),
            ],
          ),
        ),
        child: Center(
          child: InkWell(
            onTap: pickAndUploadFile, // Открытие галереи при нажатии
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/create_content_image.png',
                  width: 100, // Установите ширину изображения
                  height: 100, // Установите высоту изображения
                  fit: BoxFit.cover, // Настройте подгонку изображения
                ),
                const SizedBox(height: 20),
                Text(
                  S.of(context).add_photos,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
