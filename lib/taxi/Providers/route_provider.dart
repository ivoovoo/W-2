import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:http/http.dart' as http;

class RouteProvider with ChangeNotifier {
  String _startAddress = '';
  String _endAddress = '';
  GeoPoint? _startPoint;
  GeoPoint? _endPoint;
  RoadInfo? _roadInfo;

  String get startAddress => _startAddress;
  String get endAddress => _endAddress;
  GeoPoint? get startPoint => _startPoint;
  GeoPoint? get endPoint => _endPoint;
  RoadInfo? get roadInfo => _roadInfo;

  double get distance => _roadInfo?.distance ?? 0.0;
  double get duration => _roadInfo?.duration ?? 0.0;
  double get fare => distance * 10; // Пример расчета стоимости

  void setStartAddress(String address) {
    _startAddress = address;
    notifyListeners();
  }

  void setEndAddress(String address) {
    _endAddress = address;
    notifyListeners();
  }

  // Метод для геокодирования адреса через Nominatim
  Future<GeoPoint?> _geocodeAddress(String address) async {
    print(roadInfo!.distance);
    print(roadInfo!.duration);
    print(roadInfo);
    print(address);
    print(_startAddress);
    print(_endAddress);
    try {
      final response = await http.get(Uri.parse(
          "https://nominatim.openstreetmap.org/search?q=$address&format=json"));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data.isNotEmpty) {
          final latitude = double.parse(data[0]['lat']);
          final longitude = double.parse(data[0]['lon']);
          return GeoPoint(latitude: latitude, longitude: longitude);
        }
      }
    } catch (e) {
      print("Ошибка при геокодировании адреса: $e");
    }
    return null;
  }

  Future<void> geocodeAddresses() async {
    try {
      // Геокодирование стартового адреса
      _startPoint = await _geocodeAddress(_startAddress);
      print(_startPoint);

      // Геокодирование конечного адреса
      _endPoint = await _geocodeAddress(_endAddress);
      print(_endPoint);
      notifyListeners();
    } catch (e) {
      print("Ошибка при геокодировании: $e");
    }
  }

  Future<void> drawRoute(MapController mapController) async {
    if (_startPoint != null && _endPoint != null) {
      try {
        _roadInfo = await mapController.drawRoad(
          _startPoint!,
          _endPoint!,
          roadType: RoadType.car,
          roadOption: const RoadOption(
            roadWidth: 10,
            roadColor: Colors.blue,
            zoomInto: true,
          ),
        );

        notifyListeners();
      } catch (e) {
        print("Ошибка при построении маршрута: $e");
      }
    }
  }
}