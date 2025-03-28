import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:video_compress/video_compress.dart';

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

    // Directory tempDir = await getTemporaryDirectory();

    // final thumbFile = await VideoCompress.getFileThumbnail(_videoFile!.path,
    //     quality: 50, // default(100)
    //     position: -1 // default(-1)
    //     );

    // String? thumbPath = await VideoThumbnail.thumbnailFile(
    //   video: _videoFile!.path,
    //   thumbnailPath: tempDir.path,
    //   imageFormat: ImageFormat.JPEG,
    //   maxHeight:
    //       0, // 0 means keep original height, you can specify a height as needed.
    //   quality: 75,
    // );

    // File thumbFile = File(thumbPath);
    print('Thumbnail generated successfully.');
    setState(() {
      _thumbnailFile = null;
    });
  }

  Future<void> uploadFile(
    File file,
    String fileName,
    File thumbnailFile,
  ) async {
    const String url = 'create_video/';

    try {
      final formData = FormData.fromMap({
        'category_video': 1,
        'video_file': await MultipartFile.fromFile(
          file.path,
          filename: fileName,
        ),
        'video_preview': await MultipartFile.fromFile(thumbnailFile.path),
        "created_at": '2024-12-02T12:00:00Z',
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
