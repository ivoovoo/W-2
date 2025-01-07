import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/data/local_storage_keys.dart';
import 'package:social_network/features/interests/data_provider/interests_data_provider.dart';
import 'package:social_network/features/interests/logic/interests_bloc.dart';
import 'package:social_network/features/interests/model/interest_model.dart';
import 'package:social_network/features/interests/repository/interests_repository.dart';
import 'package:social_network/features/interests/widget/age_slider.dart';
import 'package:social_network/features/interests/widget/interests_item.dart';

import '../../../../generated/l10n.dart';

class InterestsPage extends StatefulWidget {
  const InterestsPage(
      {super.key, this.nameOfCity = 'Москва', this.title = 'Moskvin'});

  final String nameOfCity;
  final String title;

  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  late List<Interest> interestsItems;
  List<Interest> selectedInterests = [];
  late List<Widget> interestsWidgets;
  late InterestsBloc interestsBloc;
  String location = 'Неизвестно';
  String interestsId = '';
  int? ageMin;
  int? ageMax;

  @override
  void initState() {
    getInterests();
    determinePositionAndAddress();
    getLocationAndAddress();
    interestsBloc = InterestsBloc(InterestsRepository(
      interestsDataProvider: InterestsDataProvider(),
      localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
    ))
      ..add(const InterestsEvent.init());
    super.initState();
  }

  Future<void> getInterests() async {
    ageMax = await context
            .read<SharedPreferences>()
            .getInt(LocalStorageKeys.ageMaxOfCategoryVideo) ??
        100;
    ageMin = await context
            .read<SharedPreferences>()
            .getInt(LocalStorageKeys.ageMinOfCategoryVideo) ??
        0;
    print('TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT');
    print('$ageMax IIIIIIIII $ageMin');
  }

  Future<void> determinePositionAndAddress() async {
    try {
      // Проверяем разрешения
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.deniedForever) {
          print('Доступ к геолокации запрещен');
          return;
        }
      }

      // Получаем текущую позицию
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      print('Текущие координаты: ${position.latitude}, ${position.longitude}');

      // Обратное геокодирование для получения адреса
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        print('Город: ${place.locality}');
        print('Страна: ${place.country}');
        print('Название места: ${place.name}');
      }
    } catch (e) {
      print('Ошибка: $e');
    }
  }

  Future<void> getLocationAndAddress() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        setState(() {
          location = '${place.locality}';
        });
      }
    } catch (e) {
      setState(() {
        location = S.of(context).unknown;
        // location = 'Ошибка получения местоположения: $e';
      });
    }
  }

  void _onInterestClicked(String interest) {
    setState(() {
      interestsId += interest;
    });
  }

  @override
  void dispose() {
    interestsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var paddings = MediaQuery.viewPaddingOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ageMin == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: BlocBuilder<InterestsBloc, InterestsState>(
                bloc: interestsBloc,
                builder: (context, state) {
                  state.when(
                    initial: () {},
                    loadInProgress: () {},
                    loadSuccess: (interests) {
                      interestsItems = interests.interests;
                      interestsWidgets = interestsItems
                          .map(
                            (element) => InterestsItem(
                              id: element.id,
                              text: element.name,
                              isSelected: selectedInterests.contains(element),
                              onClicked: (inter) {
                                _onInterestClicked(inter);
                              },
                            ),
                          )
                          .toList();
                    },
                    loadFailure: (error) {},
                  );

                  if (state is InterestsLoadInProgressState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is InterestsLoadFailureState) {
                    return Center(
                      child: Text(state.error),
                    );
                  } else {
                    return Column(
                      children: [
                        SizedBox(height: paddings.top),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                context.pop();
                              },
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 25,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              widget.title,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              height: 34,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(27),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffff8bad),
                                    Color(0xff7fbbfb),
                                  ],
                                ),
                              ),
                              child: Text(
                                location,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: PageView.builder(
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return ListView(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                children: [
                                  Wrap(
                                    spacing: 15,
                                    runSpacing: 15,
                                    alignment: WrapAlignment.start,
                                    runAlignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    children: interestsWidgets,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        AgeSlider(
                          ageMax: ageMax!.toDouble(),
                          ageMin: ageMin!.toDouble(),
                          onChangedAgeMax: (ageMaxx) {
                            ageMax = ageMaxx.toInt();
                          },
                          onChangedAgeMin: (ageMinn) {
                            ageMin = ageMinn.toInt();
                          },
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            context.read<SharedPreferences>().setString(
                                  LocalStorageKeys.categoryVideo,
                                  interestsId,
                                );
                            context.read<SharedPreferences>().setInt(
                                  LocalStorageKeys.ageMaxOfCategoryVideo,
                                  ageMax!,
                                );
                            context.read<SharedPreferences>().setInt(
                                  LocalStorageKeys.ageMinOfCategoryVideo,
                                  ageMin!,
                                );
                            context.pop();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            constraints: const BoxConstraints(
                              minWidth: double.infinity,
                              maxHeight: 54,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(34),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xff7fbbfb),
                                  Color(0xff9586fd),
                                ],
                              ),
                            ),
                            child: Text(
                              S.of(context).apply,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                      ],
                    );
                  }
                },
              ),
            ),
    );
  }
}
