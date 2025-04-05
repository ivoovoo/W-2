import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../Providers/route_provider.dart';
import '../components/map_view.dart';

class MyLocation extends StatefulWidget {
  const MyLocation({super.key});

  @override
  State<MyLocation> createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  late final MapController mapController;

  @override
  void initState() {
    super.initState();
    mapController = MapController(
      initMapWithUserPosition: UserTrackingOption(enableTracking: true), // Или initPosition, если нужно задать начальную позицию
    );
    _drawRoute(); // Начинаем построение маршрута после создания контроллера
  }

  @override
  void dispose() {
    mapController.dispose(); // Освобождаем ресурсы
    super.dispose();
  }


  BoundingBox _createBoundingBox(GeoPoint startPoint, GeoPoint endPoint) {
    return BoundingBox(
      north: startPoint.latitude > endPoint.latitude
          ? startPoint.latitude
          : endPoint.latitude,
      south: startPoint.latitude < endPoint.latitude
          ? startPoint.latitude
          : endPoint.latitude,
      east: startPoint.longitude > endPoint.longitude
          ? startPoint.longitude
          : endPoint.longitude,
      west: startPoint.longitude < endPoint.longitude
          ? startPoint.longitude
          : endPoint.longitude,
    );
  }

  Future<void> _drawRoute() async {
    final routeProvider = Provider.of<RouteProvider>(context, listen: false);

    // Проверяем, что координаты стартовой и конечной точек заданы
    if (routeProvider.startPoint != null && routeProvider.endPoint != null) {
      try {
        print(routeProvider.startPoint);
        print(routeProvider.endPoint);
        // Рисуем маршрут на карте
        await mapController.drawRoad(
          routeProvider.startPoint!,
          routeProvider.endPoint!,
          roadType: RoadType.car,
          roadOption: RoadOption(
            roadWidth: 10,
            roadColor: Colors.blue,
            zoomInto: true,
          ),
        );

        // Создаем BoundingBox для увеличения карты
        final boundingBox = _createBoundingBox(
          routeProvider.startPoint!,
          routeProvider.endPoint!,
        );

        // Увеличиваем карту, чтобы маршрут был виден целиком
        await mapController.zoomToBoundingBox(boundingBox,);
      } catch (e) {
        print("Ошибка при построении маршрута: $e");
      }
    }
  }




  @override
  Widget build(BuildContext context) {
    final routeProvider = Provider.of<RouteProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          // const MapView(),
        OSMFlutter(
        controller: mapController,
        // trackMyPosition: false,
          osmOption:  OSMOption(
          showZoomController: true,
          showDefaultInfoWindow: true,
          userTrackingOption: const UserTrackingOption(
            enableTracking: true,
            unFollowUser: true,
          ),
          zoomOption: const ZoomOption(
            initZoom: 15,
            minZoomLevel: 8,
            maxZoomLevel: 19,
            stepZoom: 1.0,
          ),
          userLocationMarker: UserLocationMaker(
            personMarker: MarkerIcon(
              iconWidget: SvgPicture.asset(
                'assets/Group 3.svg',
                width: 30,
              ),
            ),
            directionArrowMarker: const MarkerIcon(
              icon: Icon(
                Icons.double_arrow,
                size: 48,
              ),
            ),
          ),
          roadConfiguration: const RoadOption(
              roadColor: Colors.black,
              isDotted: true,
              roadBorderColor: Colors.black),
        ),
      ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Информация о маршруте",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Дистанция: ${routeProvider.distance.toStringAsFixed(2)} км",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Длительность: ${routeProvider.duration.toStringAsFixed(2)} мин",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Стоимость: ${routeProvider.fare.toStringAsFixed(2)} руб",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 60,
          //   child: Row(
          //     children: [
          //       GestureDetector(
          //         onTap: () {
          //           Navigator.of(context).pop();
          //         },
          //         child: Container(
          //           width: 48,
          //           height: 56,
          //           decoration: const BoxDecoration(
          //             borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(100),
          //               bottomRight: Radius.circular(100),
          //             ),
          //             color: Colors.black,
          //           ),
          //           child: const Center(
          //             child: Icon(
          //               Icons.arrow_back_ios_new,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ),
          //       const SizedBox(width: 5,),
          //       ClipRRect(
          //         borderRadius: BorderRadius.all(Radius.circular(100)),
          //         child: BackdropFilter(
          //           filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 30.0),
          //             child: Container(
          //               width: 80,
          //               height: 36,
          //               decoration: const BoxDecoration(
          //                 color: Colors.transparent,
          //                 borderRadius:
          //                     BorderRadius.vertical(top: Radius.circular(30)),
          //               ),
          //               child: Row(
          //                 children: [
          //                   SvgPicture.asset('assets/Group 3.svg'),
          //                   const SizedBox(
          //                     width: 10,
          //                   ),
          //                   const Text(
          //                     'Food',
          //                     style: TextStyle(
          //                       fontWeight: FontWeight.w600,
          //                       fontSize: 16,
          //                       color: Colors.white,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //       const SizedBox(width: 5,),
          //       ClipRRect(
          //         borderRadius: BorderRadius.circular(100),
          //         child: BackdropFilter(
          //           filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 30.0),
          //             child: Container(
          //               width: 80,
          //               height: 36,
          //               decoration: const BoxDecoration(
          //                 color: Colors.transparent,
          //                 borderRadius:
          //                     BorderRadius.vertical(top: Radius.circular(30)),
          //               ),
          //               child: Row(
          //                 children: [
          //                   SvgPicture.asset('assets/Group 3.svg'),
          //                   const SizedBox(
          //                     width: 10,
          //                   ),
          //                   const Text(
          //                     'Hotel',
          //                     style: TextStyle(
          //                       fontWeight: FontWeight.w600,
          //                       fontSize: 16,
          //                       color: Colors.white,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //       const SizedBox(width: 10,),
          //       ClipRRect(
          //         borderRadius: BorderRadius.circular(30),
          //         child: BackdropFilter(
          //           filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 30.0),
          //             child: Container(
          //               width: 50,
          //               height: 36,
          //               decoration: const BoxDecoration(
          //                 color: Colors.transparent,
          //                 borderRadius:
          //                     BorderRadius.vertical(top: Radius.circular(30)),
          //               ),
          //               child: Row(
          //                 children: [
          //                   SvgPicture.asset('assets/Group 3.svg'),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // DraggableScrollableSheet(
          //   initialChildSize: 0.2, // Начальный размер
          //   minChildSize: 0.2, // Минимальный размер
          //   maxChildSize: 0.6, // Максимальный размер
          //   builder: (BuildContext context, ScrollController scrollController) {
          //     return ClipRRect(
          //       borderRadius: BorderRadius.circular(30),
          //       child: BackdropFilter(
          //         filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          //         // Adjust the blur intensity
          //         child: Container(
          //           width: double.infinity,
          //           decoration: const BoxDecoration(
          //             color: Colors.transparent,
          //             borderRadius:
          //                 BorderRadius.vertical(top: Radius.circular(30)),
          //           ),
          //           child: SingleChildScrollView(
          //             controller: scrollController,
          //             child: Padding(
          //               padding: const EdgeInsets.all(16.0),
          //               child: Column(
          //                 children: [
          //                   Padding(
          //                     padding: const EdgeInsets.symmetric(
          //                       horizontal: 20.0,
          //                       vertical: 10,
          //                     ),
          //                     child: Column(
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Row(
          //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                           children: [
          //                             Column(
          //                               crossAxisAlignment: CrossAxisAlignment.start,
          //                               children: [
          //                                 Row(
          //                                   mainAxisAlignment: MainAxisAlignment.start,
          //                                   children: [
          //                                     SvgPicture.asset('assets/Group 5.svg'),
          //                                     SizedBox(width: 10,),
          //                                     Text('My location',style: TextStyle(
          //                                       fontSize: 16,
          //                                       fontWeight: FontWeight.w500,
          //                                       color: Colors.white,
          //                                     ),)
          //                                   ],
          //                                 ),
          //                                 SizedBox(height: 10,),
          //                                 Row(
          //                                   mainAxisAlignment: MainAxisAlignment.start,
          //                                   children: [
          //                                     SvgPicture.asset('assets/Group 5.svg'),
          //                                     SizedBox(width: 10,),
          //                                     Text('Wayne Manor',style: TextStyle(
          //                                       fontSize: 16,
          //                                       fontWeight: FontWeight.w700,
          //                                       color: Colors.white,
          //                                     ),)
          //                                   ],
          //                                 ),
          //                               ],
          //                             ),
          //                             SvgPicture.asset('assets/Map pin.svg'),
          //                           ],
          //                         ),
          //                         SizedBox(height: 30,),
          //                         Row(
          //                           mainAxisAlignment:
          //                               MainAxisAlignment.spaceBetween,
          //                           children: [
          //                             Container(
          //                               width: 122,
          //                               height: 28,
          //                               decoration: BoxDecoration(
          //                                 borderRadius: BorderRadius.circular(100),
          //                                 color: Colors.white,
          //                               ),
          //                               child: Padding(
          //                                 padding: const EdgeInsets.symmetric(
          //                                     horizontal: 7.0),
          //                                 child: Row(
          //                                   children: [
          //                                     RichText(
          //                                       text: const TextSpan(
          //                                         children: [
          //                                           TextSpan(
          //                                             text: ' 7 min  ',
          //                                             style: TextStyle(
          //                                               fontSize: 16,
          //                                               fontWeight: FontWeight.w700,
          //                                               color: Color.fromRGBO(
          //                                                   84, 145, 245, 1),
          //                                             ),
          //                                           ),
          //                                           TextSpan(
          //                                             text: '2.4 km',
          //                                             style: TextStyle(
          //                                               fontSize: 16,
          //                                               color: Colors.black,
          //                                             ),
          //                                           ),
          //                                         ],
          //                                       ),
          //                                     ),
          //                                   ],
          //                                 ),
          //                               ),
          //                             ),
          //                             Container(
          //                               width: 122,
          //                               height: 28,
          //                               decoration: BoxDecoration(
          //                                 borderRadius: BorderRadius.circular(100),
          //                                 color: Color.fromRGBO(84, 145, 245, 1),
          //                               ),
          //                               child: Padding(
          //                                 padding: const EdgeInsets.symmetric(
          //                                     horizontal: 17.0),
          //                                 child: Row(
          //                                   children: [
          //                                    Text('Hit the road',style: TextStyle(
          //                                   fontSize: 16,
          //                                   fontWeight: FontWeight.w700,
          //                                   color: Colors.white,),
          //                                 ),
          //                                   ],
          //                                 ),
          //                               ),
          //                             ),
          //                           ],
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
