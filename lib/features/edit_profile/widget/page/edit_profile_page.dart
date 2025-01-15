import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/helpers/api_requester.dart';
import 'package:social_network/core/language/language_bloc.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/core/theme/app_texts.dart';
import 'package:social_network/features/edit_profile/data_provider/edit_profile_data_provider.dart';
import 'package:social_network/features/edit_profile/logic/edit_profile_bloc.dart';
import 'package:social_network/features/edit_profile/repository/edit_profile_repository.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../core/data/local_storage_keys.dart';
import '../../../../generated/l10n.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String? selectedLanguage; //выбранный язык приложения
  DateTime? selectedDate; // Выбранная дата
  String birthday = '';
  bool isCalendarVisible = false; // Состояние видимости календаря
  CalendarFormat calendarFormat = CalendarFormat.month;
  late EditProfileBloc editProfileBloc;
  ApiRequester apiRequester = ApiRequester();
  final ImagePicker _picker = ImagePicker();

  Future<void> uploadFile(File file, String fileName) async {
    const String url = 'user/upload_profile_picture/';

    try {
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          file.path,
          filename: fileName,
        ),
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
      final XFile? pickedFile = await _picker.pickImage(
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
  void initState() {
    editProfileBloc = EditProfileBloc(
      editProfileRepository: EditProfileRepository(
        editProfileDataProvider: EditProfileDataProvider(),
      ),
      localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
    )..add(const EditProfileEvent.init());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    selectedLanguage = context
        .read<SharedPreferences>()
        .getString(LocalStorageKeys.languageOfApp);
    print('selectedLanguage $selectedLanguage');
    var padding = MediaQuery.paddingOf(context);
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
        child: BlocBuilder<EditProfileBloc, EditProfileState>(
          bloc: editProfileBloc,
          builder: (context, state) {
            state.when(
              initial: () {},
              loadInProgress: () {},
              loadSuccess: (userBirthday) {
                birthday = userBirthday ?? '2001-01-01';
                print(userBirthday);
                selectedDate = DateFormat('yyyy-MM-dd').parse(birthday);
                print('selectedDate $selectedDate');
              },
              loadFailure: (e) {},
            );
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  SizedBox(height: padding.top + 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (selectedLanguage == 'en') {
                              context.read<LanguageBloc>().add(
                                    const LanguageEvent.languageChanged(
                                      locale: Locale('ru'),
                                    ),
                                  );
                            } else {
                              context.read<LanguageBloc>().add(
                                    const LanguageEvent.languageChanged(
                                      locale: Locale('en'),
                                    ),
                                  );
                            }
                          });
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              selectedLanguage == "en"
                                  ? 'assets/images/usa.png'
                                  : 'assets/images/russia.png',
                              height: 15,
                              width: 25,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              selectedLanguage == 'en' ? 'English' : 'Русский',
                              style: AppTexts.s16w500White,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Center(
                      child: InkWell(
                        onTap: pickAndUploadFile,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/create_content_image.png',
                              width: 100, // Установите ширину изображения
                              height: 100, // Установите высоту изображения
                              fit: BoxFit
                                  .cover, // Настройте подгонку изображения
                            ),
                            const SizedBox(height: 20),
                            Text(
                              S.of(context).add_photos,
                              style: AppTexts.s17w700White,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  isCalendarVisible
                      ? Container(
                          margin: const EdgeInsets.only(top: 16),
                          // Отступ сверху от кнопки
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: TableCalendar(
                            calendarFormat: calendarFormat,
                            firstDay: DateTime(1900, 1, 1),
                            lastDay: DateTime.now(),
                            focusedDay: selectedDate ?? DateTime.now(),
                            selectedDayPredicate: (day) =>
                                isSameDay(day, selectedDate),
                            onDaySelected: (selectedDay, focusedDay) {
                              editProfileBloc.add(
                                EditProfileEvent.setBirthday(
                                  DateFormat('yyyy-MM-dd').format(selectedDay),
                                ),
                              );
                              setState(() {
                                selectedDate = selectedDay;
                                isCalendarVisible =
                                    false; // Закрыть календарь после выбора
                              });
                            },
                          ),
                        )
                      : Row(
                          spacing: 50,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  context
                                      .pushNamed(AppRouterNames.interestsPage);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 21,
                                    vertical: 11,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(27),
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                  child: Text(
                                    S.of(context).interests,
                                    style: AppTexts.s16w500White,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isCalendarVisible = !isCalendarVisible;
                                    // Переключение видимости календаря
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 21,
                                    vertical: 11,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(27),
                                    color: Colors.white.withOpacity(0.2),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xffff8bad),
                                        Color(0xff7fbbfb),
                                      ],
                                    ),
                                  ),
                                  child: Text(
                                    birthday!,
                                    style: AppTexts.s16w500White,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                  const SizedBox(height: 30),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
