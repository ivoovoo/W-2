import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_thumbnail_video/index.dart';
import 'package:get_thumbnail_video/video_thumbnail.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_compress/video_compress.dart';
import 'package:video_editor_2/domain/bloc/controller.dart';
import 'package:video_player/video_player.dart';
import 'package:video_compress/video_compress.dart';

import '../../../../generated/l10n.dart';

class CenterPage extends StatefulWidget {
  const CenterPage({super.key});

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  ApiRequester apiRequester = ApiRequester();
  File? _videoFile;
  File? _thumbnailFile;


  Future<void> _pickVideo() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickVideo(source: ImageSource.gallery);
    if (pickedFile == null) return;

    setState(() {
      _videoFile = File(pickedFile.path);
      _thumbnailFile = null;

    });
    await _generateThumbnail();
    await uploadFile(
      _videoFile!,
      pickedFile.name,
      _thumbnailFile!,
    );
  }


  Future<void> _generateThumbnail() async {
    if (_videoFile == null) return;

    try {
      final tempDir = await getTemporaryDirectory();

      final XFile? thumbnailXFile = await VideoThumbnail.thumbnailFile(
        video: _videoFile!.path,
        thumbnailPath: tempDir.path,
        imageFormat: ImageFormat.JPEG,
        quality: 75,
      );

      if (thumbnailXFile == null) {
        throw Exception("Не удалось создать миниатюру");
      }

      final thumbFile = File(thumbnailXFile.path);
      print('Thumbnail generated successfully at: ${thumbFile.path}');

      setState(() {
        _thumbnailFile = thumbFile;
      });

    } catch (e) {
      debugPrint("Ошибка при создании миниатюры: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Ошибка создания превью: ${e.toString()}")),
      );
    }
  }

  Future<void> uploadFile(
    File file,
    String fileName,
    File thumbnailFile,
  ) async {
    const String url = 'create_video/';

    try {
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final videoFileName = 'video_$timestamp.mp4';
      final thumbFileName = 'thumb_$timestamp.jpg';

      final formData = FormData.fromMap({
        'category_video': 1,
        'video_file': await MultipartFile.fromFile(
          file.path,
          filename: videoFileName,
        ),
        'video_preview': await MultipartFile.fromFile(thumbnailFile.path,filename: thumbFileName),
        "created_at": DateTime.now().toIso8601String(),
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
    } on DioException catch (e) {
      print('DioError: ${e.message}');
      print('Статус: ${e.response?.statusCode}');
      print('Данные: ${e.response?.data}'); // Здесь сервер часто возвращает детали ошибки

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ошибка загрузки: ${e.response?.data['error'] ?? e.message}')),
      );
    } catch (e) {
      print('Общая ошибка: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark,
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
            onTap: _pickVideo,
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
