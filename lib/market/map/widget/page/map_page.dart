import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:social_network/core/widgets/gradient_icon_button.dart';
import 'package:social_network/market/map/widget/svg_icon_widget.dart';

import '../../../../core/constants/gen/assets.gen.dart';
import '../../../../features/auth_screen/state/auth_cubit.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  double latitude = 39.7837304;
  double longitude = -100.445882;
  String currentAddress = 'Текущий адрес...';
  final TextEditingController _searchController = TextEditingController();
  final MapController _mapController = MapController();
  LatLng? _searchedLocation;
  bool _isLoading = false;
  LatLng? _currentLocation;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
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
    _mapController.move(_currentLocation!, 15.0);
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
      setState(() {
        currentAddress = data['display_name'] ?? 'Не удалось определить адрес';
      });
    } catch (e) {
      setState(() {
        currentAddress = 'Ошибка при определении адреса';
      });
    }
  }

  Future<void> _searchAddress() async {
    final String address = _searchController.text.trim();

    if (address.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Введите адрес для поиска')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final response = await Dio().get(
        'https://nominatim.openstreetmap.org/search',
        queryParameters: {
          'q': address,
          'format': 'json',
        },
      );

      if (response.data.isNotEmpty) {
        final result = response.data[0];
        final double lat = double.parse(result['lat']);
        final double lon = double.parse(result['lon']);

        setState(() {
          _searchedLocation = LatLng(lat, lon);
          _isLoading = false;
        });

        // Перемещаем карту к найденной точке
        _mapController.move(_searchedLocation!, 15.0);
        _updateAddress(
            _searchedLocation!.latitude, _searchedLocation!.longitude);
      } else {
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Адрес не найден')),
        );
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ошибка поиска адреса')),
      );
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var paddings = MediaQuery.paddingOf(context);
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: _currentLocation ??
                  LatLng(latitude, longitude), // Центр карты
              initialZoom: 13.0, // Масштаб карты
              onTap: (tapPosition, point) {
                setState(() {
                  _searchedLocation = point;
                });
                _updateAddress(point.latitude, point.longitude);
              },
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png',
                subdomains: ['a', 'b', 'c'],
                userAgentPackageName: 'com.example.app',
                retinaMode: true, // Активируем Retina Mode автоматически
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: _searchedLocation ??
                        _currentLocation ??
                        LatLng(latitude, longitude),
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset(
                      'assets/images_of_market/marker_for_map.svg',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              // MarkerLayer(
              //   markers: [
              //     Marker(
              //       width: 40.0,
              //       height: 40.0,
              //       point: LatLng(latitude, longitude), // Координаты маркера
              //       child: SvgPicture.asset(
              //         'assets/images_of_market/marker_for_map.svg',
              //         height: 40,
              //         width: 40,
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
          Positioned(
            top: paddings.top + 20,
            left: 20,
            child: InkWell(
              onTap: () {
                context.pop();
              },
              child: const SvgIconWidget(
                  pathToIcon:
                      'assets/images_of_market/arrow_back_icon_white.svg'),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                              child: TextField(
                                controller: _searchController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  hintText: 'SEARCH..',
                                  hintStyle: TextStyle(
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
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          GradientIconButton(
                            onTap: _isLoading ? null : _searchAddress,
                            firstGradientColor: context
                                .read<AuthCubit>()
                                .firstGradientColorForGradientIconButton,
                            secondGradientColor: context
                                .read<AuthCubit>()
                                .secondGradientColorForGradientIconButton,
                            icon: Assets.icons.upArrow,
                            isLoading: _isLoading,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 43,
                  constraints: BoxConstraints(
                    minWidth: 187,
                    maxWidth: MediaQuery.sizeOf(context).width - 40,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(160, 218, 251, 1),
                        Color.fromRGBO(10, 147, 217, 1),
                      ],
                    ),
                  ),
                  child: Text(
                    currentAddress,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Raleway',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
