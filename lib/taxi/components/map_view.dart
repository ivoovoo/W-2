import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapView extends StatefulWidget {
  const MapView({
    super.key,
  });

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final mapController = MapController.withUserPosition(
    trackUserLocation: UserTrackingOption(
      enableTracking: true,
      unFollowUser: true,
    ),
    useExternalTracking: true,
  );


  Future<void> buildRoute() async {
    // Начальная и конечная точки
    final GeoPoint startPoint = GeoPoint(latitude: 47.35387, longitude: 8.43609);
    final GeoPoint endPoint = GeoPoint(latitude: 47.4371, longitude: 8.6136);

    // Точки пересечения (опционально)
    final List<GeoPoint> intersectPoints = [
      GeoPoint(latitude: 47.4361, longitude: 8.6156),
      GeoPoint(latitude: 47.4481, longitude: 8.6266),
    ];

    // Настройки дороги
    final RoadOption roadOption = RoadOption(
      roadWidth: 200,
      roadColor: Colors.blue,
      zoomInto: false,
    );

    try {
      // Вызываем функцию для рисования дороги
      RoadInfo roadInfo = await drawRoute(
        startPoint: startPoint,
        endPoint: endPoint,
        roadType: RoadType.car,
        intersectPoints: intersectPoints,
        roadOption: roadOption,
      );

      // Выводим информацию о дороге
      print("Маршрут построен: ${roadInfo.distance} км, ${roadInfo.duration} мин");
    } catch (e) {
      print("Не удалось построить маршрут: $e");
    }
  }

  Future<RoadInfo> drawRoute({
    required GeoPoint startPoint,
    required GeoPoint endPoint,
    RoadType roadType = RoadType.car,
    List<GeoPoint>? intersectPoints,
    RoadOption roadOption = const RoadOption(
      roadWidth: 10,
      roadColor: Colors.blue,
      zoomInto: true,
    ),
  }) async {
    try {
      RoadInfo roadInfo = await mapController.drawRoad(
        startPoint,
        endPoint,
        roadType: roadType,
        intersectPoint: intersectPoints,
        roadOption: roadOption,
      );
      return roadInfo;
    } catch (e) {
      print("Ошибка при построении маршрута: $e");
      rethrow;
    }
  }


  @override
  void initState() {
    super.initState();
    mapController.init();
  }

  @override
  void dispose() {
    super.dispose();
    mapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OSMFlutter(
          controller: mapController,
          osmOption: OSMOption(
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
          bottom: 700,
          right: 20,
          child: Column(
            children: [
              FloatingActionButton(
                onPressed: () {},
                //     () async {
                //   await buildRoute();
                // },
                child: Icon(Icons.directions),
              ),
              SizedBox(height: 10),
              // FloatingActionButton(
              //   onPressed: toggleMapStyle,
              //   child: Icon(Icons.brightness_6),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
