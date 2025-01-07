import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:social_network/features/chats/models/chats_model/content_model.dart';

import '../../../generated/l10n.dart';

class MessageInputWidget extends StatefulWidget {
  final Function onSend;

  const MessageInputWidget({
    super.key,
    required this.onSend,
  });

  @override
  State<MessageInputWidget> createState() => _MessageInputWidgetState();
}

class _MessageInputWidgetState extends State<MessageInputWidget> {
  TextEditingController textEditingController = TextEditingController();
  bool isAudio = false;
  bool isRecording = false;
  final recorder = FlutterSoundRecorder();
  final picker = ImagePicker();
  bool isRecorderReady = false;

  Color gradientStartColor = const Color(0xffb7b7b7);
  Color gradientEndColor = const Color(0xffefedee);

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(_updateState);
    initRecorder();
  }

  @override
  void dispose() {
    textEditingController.removeListener(_updateState); // Удаляем слушатель
    textEditingController.dispose();
    recorder.closeRecorder();
    super.dispose();
  }

  // Future<void> getVideoCodec(String videoPath) async {
  //   // Формируем команду для ffprobe
  //   final command =
  //       '-v error -select_streams v:0 -show_entries stream=codec_name -of default=noprint_wrappers=1 $videoPath';
  //
  //   // Выполняем команду
  //   final session = await FFprobeKit.execute(command);
  //
  //   // Получаем результат выполнения
  //   final output = await session.getOutput();
  //
  //   // Проверяем кодек
  //   if (output != null && output.isNotEmpty) {
  //     print('Video Codec: $output');
  //     if (output.trim() == 'h264') {
  //       // Если кодек уже h264, ничего не делаем
  //       print('Video is already in H264 format, no conversion needed.');
  //     } else {
  //       // Если кодек не h264, выполняем конвертацию
  //       print('Converting video to H264...');
  //       String outputFilePath =
  //           videoPath.replaceAll(RegExp(r'\.mp4$'), '_converted.mp4');
  //       await convertHevcToH264(videoPath, outputFilePath);
  //       // После конвертации, отправляем новый файл
  //       sendVideoFile(outputFilePath);
  //     }
  //   } else {
  //     print('Failed to get codec information');
  //   }
  // }
  //
  // Future<void> convertHevcToH264(
  //     String inputFilePath, String outputFilePath) async {
  //   // FFmpeg команда для конвертации HEVC в H264
  //   String command = '-i $inputFilePath -c:v libx264 -c:a aac $outputFilePath';
  //
  //   final session = await FFmpegKit.execute(command);
  //
  //   // Получаем логи
  //   final logs = await session.getLogs();
  //
  //   // Выводим логи для диагностики
  //   for (var log in logs) {
  //     print('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFmpeg log: ${log.getMessage()}');
  //   }
  //
  //   // Получаем код возврата
  //   final returnCode = await session.getReturnCode();
  //
  //   if (returnCode != null) {
  //     if (returnCode.isValueSuccess()) {
  //       print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
  //       print('Conversion successful: $outputFilePath');
  //     } else {
  //       // Получаем ошибку, если конвертация не удалась
  //       print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
  //       final errorOutput = await session.getLogs();
  //       print('Conversion failed with error: $errorOutput');
  //     }
  //   }
  // }
  //
  // Future<void> sendVideoFile(String videoPath) async {
  //   final videoFile = File(videoPath);
  //
  //   // Преобразование в Base64
  //   final videoBytes =
  //       await videoFile.readAsBytes(); // Читаем файл как массив байтов
  //   final videoBase64 = base64Encode(videoBytes); // Преобразуем в Base64
  //
  //   // Вызываем метод onSend с Base64 строкой
  //   widget.onSend(videoBase64, ContentType.Video);
  // }

  // Future<void> pickVideo() async {
  //   final pickedFile = await picker.pickVideo(source: ImageSource.camera);
  //   if (pickedFile != null) {
  //     final videoFile = File(pickedFile.path);
  //     // await getVideoCodec(pickedFile.path);
  //     print(pickedFile.path);
  //     print('PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP');
  //
  //     // Преобразование в Base64
  //     final videoBytes =
  //         await videoFile.readAsBytes(); // Читаем файл как массив байтов
  //     final videoBase64 = base64Encode(videoBytes); // Преобразуем в Base64
  //
  //     // Вызываем метод onSend с Base64 строкой
  //     widget.onSend(videoBase64, ContentType.Video);
  //   }
  // }

  Future<void> pickVideo() async {
    final pickedFile = await picker.pickVideo(source: ImageSource.camera);

    if (pickedFile != null) {
      final originalVideoFile = File(pickedFile.path);

      // Создаем путь для временного файла
      final rotatedVideoPath =
          '${originalVideoFile.parent.path}/rotated_video.mp4';

      // Выполняем поворот видео с помощью FFmpeg
      await FFmpegKit.execute(
          '-i ${originalVideoFile.path} -c:a copy $rotatedVideoPath');

      // Проверяем, создан ли файл с перевернутым видео
      final rotatedVideoFile = File(rotatedVideoPath);
      if (rotatedVideoFile.existsSync()) {
        print('Video rotated successfully: $rotatedVideoPath');

        // Преобразуем в Base64
        final videoBytes = await rotatedVideoFile.readAsBytes();
        final videoBase64 = base64Encode(videoBytes);

        // Вызываем метод onSend с Base64 строкой
        widget.onSend(videoBase64, ContentType.Video);

        // Удаляем временный файл, если он больше не нужен
        rotatedVideoFile.deleteSync();
      } else {
        print('Error: Rotated video file not created.');
      }
    } else {
      print('No video selected.');
    }
  }

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final imageFile = File(pickedFile.path);
      print(pickedFile.path);

      // Преобразование в Base64
      final imageBytes =
          await imageFile.readAsBytes(); // Читаем файл как массив байтов
      final imageBase64 = base64Encode(imageBytes); // Преобразуем в Base64

      // Вызываем метод onSend с Base64 строкой
      widget.onSend(imageBase64, ContentType.Image);
    }
  }

  Future<String> saveAudioToCache(File audioFile) async {
    final directory =
        await getTemporaryDirectory(); // Получаем временную директорию (кеш)
    final path =
        '${directory.path}/audio_message_${DateTime.now().millisecondsSinceEpoch}.m4a';
    final newFile = await audioFile.copy(path); // Копируем аудиофайл в кеш
    return newFile.path; // Возвращаем путь сохраненного файла
  }

  Future initRecorder() async {
    final status = await Permission.microphone.request();
    final status2 = await Permission.camera.request();

    if (status != PermissionStatus.granted ||
        status2 != PermissionStatus.granted) {
      _showPermissionError();
      return;
    }

    await recorder.openRecorder();
    isRecorderReady = true;
    recorder.setSubscriptionDuration(const Duration(milliseconds: 500));
  }

  void _showPermissionError() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Ошибка'),
          content: Text(
              'Для записи аудио или видео необходимо разрешить доступ к микрофону и камеру.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future record() async {
    if (!isRecorderReady) {
      return;
    }
    await recorder.startRecorder(toFile: 'audio');
  }

  Future<void> funcc() async {
    // Загружаем аудио файл из ассетов
    final ByteData byteData = await rootBundle.load('assets/videos/audio2.mp3');

    // Конвертируем данные в Uint8List
    final List<int> audioBytes = byteData.buffer.asUint8List();

    // Кодируем в base64
    final audioBase64 = base64Encode(audioBytes);

    print('AUDIO IN BASE64');
    print(audioBase64);

    // Передаем через метод onSend
    widget.onSend(audioBase64, ContentType.Audio);
  }

  Future stop() async {
    if (!isRecorderReady) {
      return;
    }

    final path = await recorder.stopRecorder();

    if (path != null) {
      final audioFile = File(path);
      final cachedPath = await saveAudioToCache(audioFile);
      final audioFilee = File(cachedPath);
      final audioBytes = await audioFilee.readAsBytes();
      final audioBase64 = base64Encode(audioBytes);

      print('AUDIO IN BASE64');
      print(audioBase64);
      // Передаем через метод onSend
      widget.onSend(audioBase64, ContentType.Audio);
      print('Recorded audio saved in cache: $cachedPath');
    } else {
      print('Recording failed');
    }
  }

  void _updateState() {
    setState(() {
      if (textEditingController.text.isNotEmpty) {
        gradientStartColor = const Color(0xff4285f4);
        gradientEndColor = const Color(0xff6bfa79);
      } else {
        setState(() {
          gradientStartColor = const Color(0xffb7b7b7);
          gradientEndColor = const Color(0xffefedee);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: pickImage,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 10,
            ),
            width: 46,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: const Offset(0, 0),
                  blurRadius: 15,
                ),
              ],
            ),
            child: Image.asset(
              'assets/icons/left_icon_of_message_input_widget.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 7),
        Expanded(
          child: Container(
            alignment: isRecording ? Alignment.center : null,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: const Offset(0, 0),
                  blurRadius: 15,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(37),
            ),
            child: isRecording
                ? StreamBuilder<RecordingDisposition>(
                    stream: recorder.onProgress,
                    builder: (context, shanshot) {
                      final duration = shanshot.hasData
                          ? shanshot.data!.duration
                          : Duration.zero;
                      String twoDigits(int n) => n.toString().padLeft(1);
                      final twoDigitMinutes =
                          twoDigits(duration.inMinutes.remainder(60));
                      final twoDigitSeconds =
                          twoDigits(duration.inSeconds.remainder(60));
                      return Text('$twoDigitMinutes:$twoDigitSeconds');
                    },
                  )
                : TextField(
                    controller: textEditingController,
                    cursorColor: const Color(0xff171717),
                    decoration: InputDecoration(
                      constraints: const BoxConstraints(
                        maxHeight: 40,
                        minHeight: 40,
                        minWidth: double.infinity,
                      ),
                      hintText: S.of(context).my_message,
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7c7c7c),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(37),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(37),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(37),
                        borderSide: BorderSide.none,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(37),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                  ),
          ),
        ),
        const SizedBox(width: 7),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onDoubleTap: () {
            setState(() {
              isAudio = !isAudio;
            });
          },
          onTapDown: (_) async {
            if (textEditingController.text.isNotEmpty) {
              widget.onSend(textEditingController.text, ContentType.Text);
              textEditingController.clear();
            } else if (textEditingController.text.isEmpty) {
              if (isAudio) {
                setState(() {
                  gradientStartColor = const Color(0xff4285f4);
                  gradientEndColor = const Color(0xff6bfa79);
                });
                await record();
                setState(() {
                  isRecording = true;
                });
              } else {
                await pickVideo();
              }
            }
          },
          onTapUp: (_) async {
            if (isRecording) {
              // Если мы находимся в режиме записи, останавливаем запись
              await stop();
              setState(() {
                gradientStartColor = textEditingController.text.isEmpty
                    ? const Color(0xffb7b7b7)
                    : const Color(0xff4285f4);
                gradientEndColor = textEditingController.text.isEmpty
                    ? const Color(0xffefedee)
                    : const Color(0xff6bfa79);
                isRecording = false;
              });
            }
          },
          onTapCancel: () {
            setState(() {
              // Возвращаем градиент, если нажатие отменено
              gradientStartColor = textEditingController.text.isEmpty
                  ? const Color(0xffb7b7b7)
                  : const Color(0xff4285f4);
              gradientEndColor = textEditingController.text.isEmpty
                  ? const Color(0xffefedee)
                  : const Color(0xff6bfa79);
            });
          },
          child: Container(
            padding: const EdgeInsets.all(11),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  gradientStartColor,
                  gradientEndColor,
                ],
              ),
            ),
            child: textEditingController.text.isEmpty
                ? Icon(
                    isAudio ? Icons.mic : Icons.videocam,
                    size: 18,
                    color: Colors.white,
                  )
                : Image.asset(
                    'assets/icons/send_vector.png',
                    fit: BoxFit.cover,
                  ),
          ),
        ),
      ],
    );
  }
}
