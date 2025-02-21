import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:social_network/market/detail_produk/widget/avatar_widget.dart';
import 'package:social_network/market/detail_produk/widget/image_widget.dart';
import 'package:social_network/market/first_menu/model/advertisement_model.dart';
import '../../../../core/router/app_router_names.dart';
import '../../../../generated/l10n.dart';
import '../../../Theme/style.dart';

class ModelOfHouse extends StatefulWidget {
  const ModelOfHouse({
    super.key,
    required this.advertisementModel,
  });

  final AdvertisementModel advertisementModel;

  @override
  State<ModelOfHouse> createState() => _ModelOfHouseState();
}

class _ModelOfHouseState extends State<ModelOfHouse> {
  LatLng location = const LatLng(39.7837304, -100.445882);
  final MapController _mapController = MapController();
  double? latitude;
  double? longitude;
  String currentAddress = '';

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
      setState(() {
        currentAddress = data['display_name'] ?? 'Не удалось определить адрес';
      });
      _mapController.move(LatLng(lat, lon), 11.0);
    } catch (e) {
      setState(() {
        currentAddress = 'Ошибка при определении адреса';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    latitude = widget.advertisementModel.latitude;
    longitude = widget.advertisementModel.longitude;
    print(latitude);
    print(longitude);
    location = LatLng(latitude!, longitude!);
    _updateAddress(
      widget.advertisementModel.latitude,
      widget.advertisementModel.longitude,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ImageWidget(
            name: widget.advertisementModel.name,
            address: currentAddress,
            pathToImage: widget.advertisementModel.images[0].image,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(height: 12),
                Text(
                  S.of(context).description2,
                  style: Style.AppBarTxtStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Text(
                  widget.advertisementModel.description,
                  style: Style.AppBarTxtStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const AvatarWidget(),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Garry Allen',
                              style:
                                  Style.AppBarTxtStyle.copyWith(fontSize: 16),
                            ),
                            Text(
                              'Owner',
                              style: Style.AppBarTxtStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/images_of_market/phone_icon.svg',
                          height: 28,
                          width: 28,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 16),
                        SvgPicture.asset(
                          'assets/images_of_market/message_icon.svg',
                          height: 28,
                          width: 28,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  'Gallery',
                  style: Style.AppBarTxtStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 72,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.advertisementModel.images.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context.pushNamed(
                            AppRouterNames.content,
                            extra:
                                'http://45.153.191.237${widget.advertisementModel.images[index].image}',
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'http://45.153.191.237${widget.advertisementModel.images[index].image}',
                            height: 72,
                            width: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 16);
                    },
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: 400,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FlutterMap(
                      mapController: _mapController,
                      options: MapOptions(
                        interactionOptions: const InteractionOptions(
                            flags: InteractiveFlag.none),
                        initialCenter: location,
                        // Центр карты
                        initialZoom: 11.0, // Масштаб карты
                        onTap: (_, __) {
                          context.pushNamed(
                            AppRouterNames.mapPage,
                            extra: currentAddress,
                          );
                        },
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png',
                          subdomains: [
                            'a',
                            'b',
                            'c'
                          ], // Субдомены для загрузки карт
                          userAgentPackageName: 'com.example.app',
                          retinaMode:
                              true, // Активируем Retina Mode автоматически
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              width: 40.0,
                              height: 40.0,
                              point: location,
                              // Координаты маркера
                              child: SvgPicture.asset(
                                'assets/images_of_market/marker_for_map.svg',
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            child: Container(
              height: 50,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).price,
                        style: Style.AppBarTxtStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        widget.advertisementModel.price,
                        style: Style.AppBarTxtStyle.copyWith(fontSize: 16),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 43,
                      width: 122,
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
                        S.of(context).rent_now,
                        style: Style.AppBarTxtStyle.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
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
