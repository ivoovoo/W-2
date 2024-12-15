import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_network/core/helpers/api_requester.dart';

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
        // "video_preview": "",
      });

      final response = await apiRequester.toPostFor(url, formData);

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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
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
                  'Добавить фотоснимки',
                  style: TextStyle(
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

// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:video_thumbnail/video_thumbnail.dart';
// import 'package:social_network/core/helpers/api_requester.dart';
//
// class CenterPage extends StatefulWidget {
//   const CenterPage({super.key});
//
//   @override
//   State<CenterPage> createState() => _CenterPageState();
// }
//
// class _CenterPageState extends State<CenterPage> {
//   ApiRequester apiRequester = ApiRequester();
//   final ImagePicker _picker = ImagePicker();
//
//   Future<File?> _generateVideoThumbnail(String videoPath) async {
//     try {
//       final tempDir = await getTemporaryDirectory();
//       final thumbnailPath = await VideoThumbnail.thumbnailFile(
//         video: videoPath,
//         thumbnailPath: tempDir.path, // Сохраняем во временной папке
//         imageFormat: ImageFormat.PNG, // Формат изображения
//         maxHeight: 200, // Установите желаемую высоту
//         quality: 75, // Качество превью
//       );
//
//       if (thumbnailPath != null) {
//         return File(thumbnailPath);
//       }
//     } catch (e) {
//       print("Ошибка при генерации превью: $e");
//     }
//     return null;
//   }
//
//   Future<void> uploadFile(
//       File videoFile, File? previewFile, String fileName) async {
//     final String url = 'create_video/';
//
//     try {
//       final formData = FormData.fromMap({
//         'category_video': 1,
//         'video_file': await MultipartFile.fromFile(
//           videoFile.path,
//           filename: fileName,
//         ),
//         "created_at": '2024-12-02T12:00:00Z',
//         "video_preview": previewFile != null
//             ? await MultipartFile.fromFile(previewFile.path,
//                 filename: "preview.png")
//             : null,
//       });
//
//       final response = await apiRequester.toPostFor(url, formData);
//
//       if (response.statusCode == 200) {
//         print('Upload successful: ${response.data}');
//       } else {
//         print('Upload failed: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//   }
//
//   Future<void> pickAndUploadFile() async {
//     try {
//       // Выбор файла из галереи
//       final XFile? pickedFile = await _picker.pickVideo(
//         source: ImageSource.gallery,
//       );
//
//       if (pickedFile != null) {
//         File videoFile = File(pickedFile.path);
//         String fileName = pickedFile.name;
//
//         print("Выбранное видео: $fileName");
//
//         // Генерация превью
//         File? previewFile = await _generateVideoThumbnail(videoFile.path);
//
//         if (previewFile != null) {
//           print("Превью сгенерировано: ${previewFile.path}");
//         } else {
//           print("Не удалось сгенерировать превью.");
//         }
//
//         // Отправляем видео и превью на сервер
//         await uploadFile(videoFile, previewFile, fileName);
//       } else {
//         print("Файл не был выбран.");
//       }
//     } catch (e) {
//       print("Ошибка при выборе файла: $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xff7fbbfb),
//               Color(0xffff8bad),
//             ],
//           ),
//         ),
//         child: Center(
//           child: InkWell(
//             onTap: pickAndUploadFile, // Открытие галереи при нажатии
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/images/create_content_image.png',
//                   width: 100, // Установите ширину изображения
//                   height: 100, // Установите высоту изображения
//                   fit: BoxFit.cover, // Настройте подгонку изображения
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   'Добавить фотоснимки',
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.white,
//                     fontFamily: 'Inter',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:social_network/core/helpers/api_requester.dart';
//
// class CenterPage extends StatefulWidget {
//   const CenterPage({super.key});
//
//   @override
//   State<CenterPage> createState() => _CenterPageState();
// }
//
// class _CenterPageState extends State<CenterPage> {
//   ApiRequester apiRequester = ApiRequester();
//   final ImagePicker _picker = ImagePicker();
//
//   Future<void> uploadFile(
//       File file, String fileName, String videoPreviewPath) async {
//     final String url = 'create_video/';
//
//     try {
//       final formData = FormData.fromMap({
//         'category_video': 1,
//         'video_file': await MultipartFile.fromFile(
//           file.path,
//           filename: fileName,
//         ),
//         "created_at": '2024-12-02T12:00:00Z',
//         "video_preview": await MultipartFile.fromFile(videoPreviewPath),
//       });
//
//       final response = await apiRequester.toPostFor(url, formData);
//
//       if (response.statusCode == 200) {
//         print('Upload successful: ${response.data}');
//       } else {
//         print('Upload failed: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//   }
//
//   Future<File> generateVideoPreview(String videoPath) async {
//     final directory = await getTemporaryDirectory();
//     final thumbnailPath = '${directory.path}/thumbnail.png';
//
//     final arguments = [
//       '-i', videoPath, // Входной файл
//       '-ss', '00:00:01.000', // Извлекаем кадр на 1-й секунде
//       '-vframes', '1', // Извлекаем 1 кадр
//       thumbnailPath, // Путь для сохранения миниатюры
//     ];
//
//     // Выполнение команды FFmpeg
//     await FFmpegKit.execute(arguments.join(' '));
//
//     return File(thumbnailPath);
//   }
//
//   Future<void> pickAndUploadFile() async {
//     try {
//       // Выбор файла из галереи
//       final XFile? pickedFile = await _picker.pickVideo(
//         source: ImageSource.gallery,
//       );
//
//       if (pickedFile != null) {
//         File videoFile = File(pickedFile.path);
//         String fileName = pickedFile.name;
//
//         print("Выбранный файл: $fileName");
//
//         // Генерируем превью для видео
//         File previewFile = await generateVideoPreview(videoFile.path);
//
//         // Отправляем видео и превью на сервер
//         await uploadFile(videoFile, fileName, previewFile.path);
//       } else {
//         print("Файл не был выбран.");
//       }
//     } catch (e) {
//       print("Ошибка при выборе файла: $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xff7fbbfb),
//               Color(0xffff8bad),
//             ],
//           ),
//         ),
//         child: Center(
//           child: InkWell(
//             onTap: pickAndUploadFile, // Открытие галереи при нажатии
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/images/create_content_image.png',
//                   width: 100, // Установите ширину изображения
//                   height: 100, // Установите высоту изображения
//                   fit: BoxFit.cover, // Настройте подгонку изображения
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   'Добавить фотоснимки',
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.white,
//                     fontFamily: 'Inter',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
