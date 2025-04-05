import 'dart:io';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_network/taxi/Screen/pay_history.dart';
import 'package:social_network/taxi/Screen/search_driver_page.dart';

import '../BLoCs/Driver Info BLoC/driver_info_bloc.dart';
import '../BLoCs/Driver Info BLoC/driver_info_events.dart';
import '../BLoCs/Driver Info BLoC/driver_info_state.dart';
import '../components/map_view.dart';

class DriverInfo extends StatefulWidget {
  const DriverInfo({super.key});

  @override
  State<DriverInfo> createState() => _DriverInfoState();
}

class _DriverInfoState extends State<DriverInfo> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _carBrandController = TextEditingController();
  final _carNumberController = TextEditingController();
  File? _image1;
  File? _image2;
  String _selectedCountryCode = '7';
  String _selectedCountryFlag = '🇷🇺';

  Future<void> _takePhoto(int imageNumber) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.camera, // Используем камеру
      maxWidth: 800, // Опционально: ограничение размера изображения
    );

    if (pickedFile != null) {
      setState(() {
        if (imageNumber == 1) {
          _image1 = File(pickedFile.path); // Сохраняем первое фото
        } else if (imageNumber == 2) {
          _image2 = File(pickedFile.path); // Сохраняем второе фото
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DriverBloc(),
      child: Scaffold(
        body: Stack(
          children: [
            const MapView(),
            DraggableScrollableSheet(
              initialChildSize: 0.93, // Начальный размер
              minChildSize: 0.3, // Минимальный размер
              maxChildSize: 0.93, // Максимальный размер
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _image1 == null
                                  ? GestureDetector(
                                      onTap: () => _takePhoto(1),
                                      child: Stack(
                                        children: [
                                          SvgPicture.asset('assets/info.svg'),
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Container(
                                              width: 24,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                    'assets/cam.svg'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ))
                                  : GestureDetector(
                                      onTap: () => _takePhoto(1),
                                      child: Stack(
                                        children: [
                                          Container(
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          200),
                                                  child: Image.file(
                                                    _image1!,
                                                    fit: BoxFit.cover,
                                                  ))),
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Container(
                                              width: 24,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                    'assets/cam.svg'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                              Column(
                                children: [
                                  Container(
                                    width: 215,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 7,
                                          color: Colors.grey.withOpacity(0.15),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: TextField(
                                                controller: _nameController,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: 'Enter your name',
                                                  hintStyle: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                  ),
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.zero,
                                                ),
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Color.fromRGBO(
                                                      245, 215, 58, 1),
                                                  size: 20,
                                                ),
                                                Text(
                                                  ' 4.3',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 215,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 7,
                                          color: Colors.grey.withOpacity(0.15),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                showCountryPicker(
                                                  context: context,
                                                  useSafeArea: true,
                                                  showWorldWide: false,
                                                  showPhoneCode: true,
                                                  onSelect: (Country country) {
                                                    setState(() {
                                                      _selectedCountryCode =
                                                          country.phoneCode;
                                                      _selectedCountryFlag =
                                                          country.flagEmoji;
                                                    });
                                                  },
                                                  moveAlongWithKeyboard: false,
                                                  countryListTheme:
                                                      CountryListThemeData(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(40.0),
                                                      topRight:
                                                          Radius.circular(40.0),
                                                    ),
                                                    inputDecoration:
                                                        InputDecoration(
                                                      labelText: '  Search',
                                                      hintStyle:
                                                          const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 15,
                                                      ),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Color.fromRGBO(
                                                              253, 183, 18, 1),
                                                          width: 0.5,
                                                        ),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Color.fromRGBO(
                                                              253, 183, 18, 1),
                                                          width: 0.5,
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Color.fromRGBO(
                                                              253, 183, 18, 1),
                                                          // Желтый цвет
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      contentPadding:
                                                          const EdgeInsets.all(
                                                              8),
                                                    ),
                                                    searchTextStyle:
                                                        const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  color: Colors.transparent,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Text(_selectedCountryFlag),
                                                    Text(
                                                      '+${_selectedCountryCode}',
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                controller: _phoneController,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText:
                                                      'Choose your phone number',
                                                  hintStyle: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                  ),
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.zero,
                                                ),
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  color: Colors.grey.withOpacity(0.15),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: _carBrandController,
                                        decoration: const InputDecoration(
                                          hintText: 'Indicate your car',
                                          hintStyle: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                          ),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.zero,
                                        ),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const PayHistory()),
                                        );
                                      },
                                      child: Container(
                                        height: double.infinity,
                                        width: 126,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: const Color.fromRGBO(
                                              249, 215, 58, 1),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '0 USDT',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  color: Colors.grey.withOpacity(0.15),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: _carNumberController,
                                        decoration: const InputDecoration(
                                          hintText: 'Indicate your car number',
                                          hintStyle: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                          ),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.zero,
                                        ),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: double.infinity,
                                      width: 87,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: const Color.fromRGBO(
                                            249, 215, 58, 1),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          '777',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SearchDriverPage()),
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                gradient: const LinearGradient(
                                    colors: [
                                      Colors.black,
                                      Color.fromRGBO(249, 215, 58, 1),
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight),
                              ),
                              child: const Center(
                                child: Text(
                                  'Find traveler',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 200,
                          ),
                          InkWell(
                            onTap: () => _takePhoto(1),
                            child: Row(
                              children: [
                                Container(
                                  width: 68,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.15),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child:
                                        SvgPicture.asset('assets/photo 1.svg'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  'Selfie photo with\npassport',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () => _takePhoto(2),
                            child: Row(
                              children: [
                                Container(
                                  width: 68,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.15),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child:
                                        SvgPicture.asset('assets/photo 1.svg'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  'The reverse side of the driver’s\nlicense',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    )
                                  ]),
                              child: const Center(
                                child: Text(
                                  'Write home',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              context.read<DriverBloc>().add(
                                    SaveDriverData(
                                      name: _nameController.text,
                                      phoneNumber: _phoneController.text,
                                      carBrand: _carBrandController.text,
                                      carNumber: _carNumberController.text,
                                      profilePhotoPath: 'path_to_profile_photo',
                                      licensePhotoPath: 'path_to_license_photo',
                                    ),
                                  );
                            },
                          ),
                          BlocBuilder<DriverBloc, DriverState>(
                            builder: (context, state) {
                              if (state is DriverError) {
                                return Text(state.message,
                                    style: const TextStyle(color: Colors.red));
                              } else if (state is DriverSaved) {
                                return const Text('Data saved successfully!');
                              }
                              return const SizedBox.shrink();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
