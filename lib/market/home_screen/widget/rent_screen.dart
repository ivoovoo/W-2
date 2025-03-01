import 'dart:developer';

import 'package:country_currency_pickers/country.dart';
import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:sealed_currencies/sealed_currencies.dart';
import 'package:social_network/core/data/local_storage_data_provider.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/market/Theme/style.dart';
import 'package:social_network/market/first_menu/data_provider/advertisements_data_provider.dart';
import 'package:social_network/market/first_menu/logic/advertisement_bloc.dart';
import 'package:social_network/market/first_menu/model/advertisement_model.dart';
import 'package:social_network/market/first_menu/repository/advertisement_repository.dart';
import 'package:social_network/market/first_menu/repository/first_menu_repository.dart';
import 'package:social_network/market/first_menu/widget/house_card.dart';
import 'package:social_network/market/first_menu/widget/items_option.dart';
import 'package:social_network/market/first_menu/widget/select_option_item.dart';
import 'package:social_network/market/home_screen/widget/plus_button.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RentScreen extends StatefulWidget {
  const RentScreen({
    super.key,
    required this.isMenuOpen,
    required this.onOpenMenu,
  });

  final bool isMenuOpen;
  final VoidCallback onOpenMenu;

  @override
  State<RentScreen> createState() => _RentScreenState();
}

class _RentScreenState extends State<RentScreen> {
  List<AdvertisementModel> advertisements = [];
  int? selectedOption = 0;
  final List<Map<String, String>> items = FirstMenuRepository.items;
  late AdvertisementBloc _advertisementBloc;
  String currentAddress = 'Текущий адрес...';
  LatLng? _currentLocation;
  String countryCode = '';
  String currency = '';
  double exchangeRate = 0;

  /// Примерный маппинг стран в валюты (ISO 4217)
  Map<String, String> countryToCurrency = {
    "US": "USD",
    "KG": "KGS",
    "RU": "RUB",
    "GB": "GBP",
    "DE": "EUR",
    "FR": "EUR",
    "CN": "CNY",
    "JP": "JPY",
    // Добавь другие страны по необходимости
  };

  /// Получить валюту по коду страны
  String? getCurrencyByCountry(String countryCode) {
    return countryToCurrency[countryCode.toUpperCase()] ??
        "USD"; // По умолчанию USD
  }

  void onOptionPressed(int index) {
    setState(() {
      selectedOption = index; // Устанавливаем выбранную кнопку
    });
  }

  @override
  void initState() {
    _advertisementBloc = AdvertisementBloc(
      AdvertisementRepository(
        localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
        advertisementDataProvider: AdvertisementDataProvider(),
      ),
    )..add(const AdvertisementEvent.init());
    _getCurrentLocation();
    super.initState();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Проверяем доступность службы местоположения
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Служба местоположения отключена')),
      );
      return;
    }

    // Проверяем разрешения
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Разрешение на доступ к местоположению отклонено')),
        );
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text(
                'Разрешение на доступ к местоположению навсегда отклонено')),
      );
      return;
    }

    // Получаем текущее местоположение
    final position = await Geolocator.getCurrentPosition();
    setState(() {
      _currentLocation = LatLng(position.latitude, position.longitude);
    });

    // Центрируем карту на текущем местоположении
    // _mapController.move(_currentLocation!, 15.0);
    _updateAddress(_currentLocation!.latitude, _currentLocation!.longitude);
  }

  /// Обратное геокодирование для получения адреса
  Future<void> _updateAddress(double lat, double lon) async {
    try {
      final response = await Dio().get(
        'https://nominatim.openstreetmap.org/reverse',
        queryParameters: {
          'lat': lat,
          'lon': lon,
          'format': 'json',
        },
      );

      final data = response.data;
      print(data);
      print("RTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT");
      countryCode = data['address']['country_code'];
      log(countryCode);
      // currency = FiatCurrency.fromCode(countryCode, currencies).code;
      // currency = CountryCurrencyPicker.getCurrencyCode(countryCode);
      currency = getCurrencyByCountry(countryCode)!;
      log(currency);
      convertPrice();
      setState(() {
        currentAddress =
            data['address']['neighbourhood'] ?? 'Не удалось определить адрес';
      });
    } catch (e) {
      setState(() {
        currentAddress = 'Ошибка при определении адреса';
      });
    }
  }

  Future<double?> getExchangeRate(
      String fromCurrency, String toCurrency) async {
    const apiKey =
        '8e5b8a767f903179e92acc7c'; // Зарегистрируйся и получи API-ключ
    final url = Uri.parse(
        'https://v6.exchangerate-api.com/v6/$apiKey/latest/$fromCurrency');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['conversion_rates'][toCurrency];
    } else {
      print('Ошибка при получении курса валют');
      return null;
    }
  }

  Future<void> convertPrice() async {
    final _exchangeRate = await getExchangeRate("USD", currency);

    if (_exchangeRate != null) {
      exchangeRate = _exchangeRate;
    } else {
      print("Не удалось получить курс валют.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdvertisementBloc, AdvertisementState>(
      bloc: _advertisementBloc,
      builder: (context, state) {
        state.when(
          initial: () {},
          loadInProgress: () {},
          loadSuccess: (advertisementsResponse) {
            advertisements = advertisementsResponse.myAdvertisements;
          },
          loadFailure: (error) {},
        );
        if (state is AdvertisementLoadInProgressState) {
          return Container(
            color: Colors.white,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is AdvertisementLoadFailureState) {
          return Center(
            child: Text(state.error),
          );
        }
        return Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            borderRadius: widget.isMenuOpen
                ? const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )
                : null,
          ),
          child: ListView(
            children: [
              // SizedBox(height: MediaQuery.paddingOf(context).top),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: widget.onOpenMenu,
                            child: const PlusButton(),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              currentAddress,
                              style: Style.AppBarTxtStyle.copyWith(
                                fontSize: 22,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/images_of_market/notification_icon.svg',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images_of_market/search_icon.svg'),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: 289,
                        height: 48,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Search address, or near you ',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    InkWell(
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.lightBlueAccent],
                            begin: Alignment.bottomCenter,
                            // Начало градиента снизу
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                              'assets/images_of_market/filter_icon.svg'),
                        ),
                      ),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Near from you',
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
                  itemCount: advertisements.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        context.pushNamed(
                          AppRouterNames.modelOfHouse,
                          extra: advertisements[index],
                          pathParameters: {
                            "currency": currency,
                            "exchangeRate": exchangeRate.toString(),
                          },
                        );
                      },
                      child: HouseCard(
                        isNetworkImage: true,
                        pathToImage: advertisements[index].images[0].image,
                        name: advertisements[index].name,
                        info: advertisements[index].description,
                        myLocation: _currentLocation,
                        address: LatLng(
                          advertisements[index].latitude,
                          advertisements[index].longitude,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 20);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best for you',
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
                height: 400,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  dragStartBehavior: DragStartBehavior.start,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                      onTap: () {},
                      child: RowOptionWidget(
                        name: item['name']!,
                        cost: item['cost']!,
                        imgPath: item['imgPath']!,
                        description1: item['description1']!,
                        description2: item['description2']!,
                        svgPath1: item['svgPath1']!,
                        svgPath2: item['svgPath2']!,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
