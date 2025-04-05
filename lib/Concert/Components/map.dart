import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key,
  });

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final mapController = MapController.withUserPosition(
    trackUserLocation: UserTrackingOption(
      enableTracking: true,
      unFollowUser: false,
    ),
  );

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
            zoomOption: const ZoomOption(
              initZoom: 15,
              minZoomLevel: 8,
              maxZoomLevel: 19,
              stepZoom: 1.0,
            ),
            userLocationMarker: UserLocationMaker(
              personMarker: MarkerIcon(
                iconWidget: Icon(Icons.add,color: Colors.black,)
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
      ],
    );
  }
}
