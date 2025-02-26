import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:social_network/core/constants/gen/assets.gen.dart';
import 'package:social_network/core/widgets/gradient_icon_button.dart';
import 'package:social_network/features/auth_screen/state/auth_cubit.dart';
import 'package:social_network/market/Theme/style.dart';
import 'package:social_network/market/first_menu/widget/house_card.dart';
import 'package:social_network/market/first_menu/widget/select_option_item.dart';

import '../../second_menu/repository/second_menu_repository.dart';

class WhatScreen extends StatefulWidget {
  const WhatScreen({
    super.key,
    required this.indexOfCurrentMenu,
    required this.sendListBool,
    required this.sendDataOfProduct,
    required this.sendImagesOfProduct,
  });

  final int indexOfCurrentMenu;
  final Function(List<bool>) sendListBool;
  final Function(List<String>) sendDataOfProduct;
  final Function(List<XFile>) sendImagesOfProduct;

  @override
  State<WhatScreen> createState() => _WhatScreenState();
}

class _WhatScreenState extends State<WhatScreen> {
  TextEditingController nameOfProduct = TextEditingController();
  TextEditingController priceOfProduct = TextEditingController();
  TextEditingController infoAboutProduct = TextEditingController();
  TextEditingController quantityOfProduct = TextEditingController();

  int? selectedOption = 0;
  final List<String> images = SecondMenuRepository.images;
  final List<String> names = SecondMenuRepository.names;
  final List<String> descriptions = SecondMenuRepository.descriptions;

  final ImagePicker _picker = ImagePicker();
  List<XFile> _images = [];

  // List<MultipartFile> listImages = [];
  List<bool> _listBool = [true, true, true, true, true, true, true, true, true];

  Future<void> _pickImages() async {
    final List<XFile>? pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null) {
      setState(() {
        _images = pickedFiles;
      });
    }
  }

  // Future<List<MultipartFile>> convertXFilesToMultipartFiles(
  //     List<XFile> xFiles) async {
  //   List<MultipartFile> multipartFiles = [];
  //
  //   for (XFile xFile in xFiles) {
  //     // Преобразуем XFile в MultipartFile
  //     MultipartFile multipartFile = await MultipartFile.fromFile(
  //       xFile.path,
  //       filename: xFile.name, // Используем имя файла
  //     );
  //     multipartFiles.add(multipartFile);
  //   }
  //
  //   return multipartFiles;
  // }

  void _removeImage(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

  void onOptionPressed(int index) {
    setState(() {
      selectedOption = index;
    });
  }

  TextEditingController _definitionTextController() {
    TextEditingController controller = TextEditingController();

    if (widget.indexOfCurrentMenu == 0) {
      controller = nameOfProduct;
    } else if (widget.indexOfCurrentMenu == 1) {
      controller = priceOfProduct;
    } else if (widget.indexOfCurrentMenu == 3) {
      controller = infoAboutProduct;
    }
    return controller;
  }

  String hintTextOfTextField() {
    String hintText = "WHAT'S YOU SELL?";
    if (widget.indexOfCurrentMenu == 0) {
      hintText = "WHAT'S YOU SELL?";
    } else if (widget.indexOfCurrentMenu == 1) {
      hintText = "PRICE";
    } else if (widget.indexOfCurrentMenu == 3) {
      hintText = "INFORMATION";
    }
    return hintText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(250, 250, 250, 1),
      child: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jakarta',
                      style: Style.AppBarTxtStyle,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                          'assets/images_of_market/notification_icon.svg'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    SelectOptionItem(
                      selectOptionText: 'House',
                      index: 0,
                      isSelected: selectedOption == 0,
                      onPressed: onOptionPressed,
                    ),
                    const SizedBox(width: 10),
                    SelectOptionItem(
                      selectOptionText: 'Apartment',
                      index: 1,
                      isSelected: selectedOption == 1,
                      onPressed: onOptionPressed,
                    ),
                    const SizedBox(width: 10),
                    SelectOptionItem(
                      selectOptionText: 'Hotel',
                      index: 2,
                      isSelected: selectedOption == 2,
                      onPressed: onOptionPressed,
                    ),
                    const SizedBox(width: 10),
                    SelectOptionItem(
                      selectOptionText: 'Villa',
                      index: 3,
                      isSelected: selectedOption == 3,
                      onPressed: onOptionPressed,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '@goioga',
                      style: Style.AppBarTxtStyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      'See more',
                      style: Style.AppBarTxtStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 272,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return HouseCard(
                      pathToImage: images[0],
                      name: names[0],
                      address: LatLng(11, 22),
                      myLocation: null,
                      info: '',
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10);
                  },
                ),
              ),
              GridView.builder(
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Количество колонок в GridView
                  crossAxisSpacing: 20, // Отступы по горизонтали
                  mainAxisSpacing: 20, // Отступы по вертикали
                ),
                itemCount: _images.length,
                itemBuilder: (context, index) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: FileImage(File(_images[index].path)),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: InkWell(
                          child: const Icon(
                            Icons.close,
                            color: Colors.blue,
                            size: 20,
                          ),
                          onTap: () => _removeImage(index),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              child: Column(
                children: [
                  BlocProvider<AuthCubit>(
                    create: (context) => AuthCubit(),
                    child: BlocBuilder<AuthCubit, AuthhState>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: _pickImages,
                                      child: SvgPicture.asset(
                                        'assets/images_of_market/clip_icon.svg',
                                        height: 48.0,
                                        width: 48.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    // const SizedBox(width: 10),
                                    Expanded(
                                      child: TextField(
                                        controller: _definitionTextController(),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 10),
                                          hintText: hintTextOfTextField(),
                                          hintStyle: const TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        onChanged: (value) {
                                          context
                                              .read<AuthCubit>()
                                              .definitionColorsGradientIconButton(
                                                  value);
                                          widget.sendDataOfProduct(
                                            [
                                              nameOfProduct.text,
                                              infoAboutProduct.text,
                                              priceOfProduct.text,
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            GradientIconButton(
                              onTap: () {
                                widget.sendImagesOfProduct(_images);
                                setState(() {
                                  if (nameOfProduct.text.isNotEmpty) {
                                    _listBool[0] = false;
                                  }
                                  if (priceOfProduct.text.isNotEmpty) {
                                    _listBool[1] = false;
                                  }
                                  if (infoAboutProduct.text.isNotEmpty) {
                                    _listBool[3] = false;
                                  }
                                  if (_images.isNotEmpty) {
                                    _listBool[6] = false;
                                  }
                                });
                                widget.sendListBool(_listBool);
                              },
                              firstGradientColor: context
                                  .read<AuthCubit>()
                                  .firstGradientColorForGradientIconButton,
                              secondGradientColor: context
                                  .read<AuthCubit>()
                                  .secondGradientColorForGradientIconButton,
                              icon: Assets.icons.upArrow,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
