import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:social_network/core/blocs/keyboard_cubit/keyboard_cubit.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/router/app_router.dart';
import 'package:social_network/market/create_advertisement/data_provider/create_advertisement_data_provider.dart';
import 'package:social_network/market/create_advertisement/repository/create_advertisement_repository.dart';
import 'package:social_network/market/create_advertisement/repository/titles_of_menu_of_create_advertisement.dart';
import 'package:social_network/market/home_screen/widget/widget.dart';

import 'logic/create_advertisement/create_advertisement_bloc.dart';
import 'notifiers/notifier_of_menu.dart';
import 'widget/widget.dart';

class CreateAdvertisementScreen extends StatefulWidget {
  const CreateAdvertisementScreen({super.key});

  @override
  State<CreateAdvertisementScreen> createState() =>
      _CreateAdvertisementScreenState();
}

class _CreateAdvertisementScreenState extends State<CreateAdvertisementScreen> {
  int currentMenuScreen = 0;
  List<bool> listBool = [true, true, true, true, true, true, true, true, true];
  late CreateAdvertisementBloc createAdvertisementBloc;
  String nameOfProduct = '';
  String description = '';
  double price = 0;
  double latitude = 0;
  double longitude = 0;
  int adTypeId = -1;
  int mainCategoryId = -1;
  List<XFile> images = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    createAdvertisementBloc = CreateAdvertisementBloc(
      CreateAdvertisementRepository(
        createAdvertisementDataProvider: CreateAdvertisementDataProvider(),
        localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
      ),
    );
  }

  @override
  void dispose() {
    createAdvertisementBloc.close();
    super.dispose();
  }

  Future<List<MultipartFile>> convertXFilesToMultipartFiles(
      List<XFile> xFiles) async {
    List<MultipartFile> multipartFiles = [];

    for (XFile xFile in xFiles) {
      // Преобразуем XFile в MultipartFile
      MultipartFile multipartFile = await MultipartFile.fromFile(
        xFile.path,
        filename: xFile.name, // Используем имя файла
      );
      multipartFiles.add(multipartFile);
    }

    return multipartFiles;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff0a8ed9),
            Color(0xffffffff),
          ],
        ),
      ),
      child: BlocConsumer<CreateAdvertisementBloc, CreateAdvertisementState>(
        listener: (context, state) {
          state.maybeWhen(
            loadSuccess: (response) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Advertisement created successfully')),
              );
              appNotifier.secondMenuOfMarket = false;
              appNotifier.switchingToMarket();
            },
            orElse: () {},
          );
        },
        bloc: createAdvertisementBloc,
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2 - 20,
                      height: double.infinity,
                      child: SideMenu(
                        listBool: listBool,
                        onCreate: () async {
                          log('OnCreate');
                          log(images.isEmpty.toString());
                          if (nameOfProduct.isNotEmpty &&
                              description.isNotEmpty &&
                              price != 0 &&
                              latitude != 0 &&
                              longitude != 0 &&
                              adTypeId != -1 &&
                              mainCategoryId != -1 &&
                              images.isNotEmpty) {
                            log('is True');
                            List<MultipartFile> listImages =
                                await convertXFilesToMultipartFiles(images);
                            FormData formData = FormData.fromMap({
                              "name": nameOfProduct,
                              "description": description,
                              "price": price,
                              "latitude": latitude,
                              "longitude": longitude,
                              "ad_type": adTypeId,
                              "main_category": mainCategoryId,
                            });
                            for (var image in listImages) {
                              formData.files.add(
                                MapEntry("images", image),
                              );
                            }
                            log('NNNNNNNNNNNHHHHHHHHHH2');
                            createAdvertisementBloc.add(
                              CreateAdvertisementEvent.createAdvertisement(
                                formData,
                              ),
                            );
                            log('message');
                          } else {
                            print('XXXXXXXXXXXXXXXXXXXXXXX');
                          }
                        },
                        onTap: (indexOfMenu) {
                          context.read<NotifierOfMenu>().closeMenu();
                          setState(() {
                            currentMenuScreen = indexOfMenu;
                          });
                        },
                        titles: TitlesOfMenuOfCreateAdvertisement
                            .titlesOfMenuOfCreateAdvertisement,
                        pathToSvgIcons: TitlesOfMenuOfCreateAdvertisement
                            .pathToSvgIconsOfCreateAdvertisement,
                        isHomeScreen: false,
                      ),
                    ),
                    Consumer<NotifierOfMenu>(
                      builder: (context, notifierOfMenu, child) {
                        return AnimatedScale(
                          alignment: Alignment.centerRight,
                          scale: notifierOfMenu.isMenuOpen ? 0.5 : 1,
                          duration: const Duration(milliseconds: 300),
                          child: ClipRRect(
                            borderRadius: notifierOfMenu.isMenuOpen
                                ? const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  )
                                : BorderRadius.zero,
                            child: IndexedStack(
                              index: currentMenuScreen == 2
                                  ? 1
                                  : currentMenuScreen == 7
                                      ? 2
                                      : 0,
                              children: [
                                WhatScreen(
                                  indexOfCurrentMenu: currentMenuScreen,
                                  sendDataOfProduct: (listString) {
                                    setState(() {
                                      nameOfProduct = listString[0];
                                      description = listString[1];
                                      price = double.parse(listString[2]);
                                    });
                                  },
                                  sendImagesOfProduct: (listImages) {
                                    setState(() {
                                      images = listImages;
                                    });
                                  },
                                  sendListBool: (listBoolean) {
                                    setState(() {
                                      listBool = listBoolean;
                                    });
                                  },
                                ),
                                LocationScreen(
                                  isMenuItemScreen: true,
                                  sendLanLng: (latlng) {
                                    setState(() {
                                      listBool[2] = false;
                                      latitude = latlng.latitude;
                                      longitude = latlng.longitude;
                                    });
                                  },
                                ),
                                ConditionScreen(
                                  sendId: (int typeId, int mainCategoryIdd) {
                                    setState(() {
                                      print('MAINCATEGORYIDDDDDDDDDDDDDDDDD');
                                      listBool[7] = false;
                                      adTypeId = typeId;
                                      mainCategoryId = mainCategoryIdd;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              BlocBuilder<KeyboardCubit, KeyboardState>(
                builder: (context, state) {
                  return Visibility(
                    visible: state is KeyboardClosed,
                    child: SizedBox(height: 60.h),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
