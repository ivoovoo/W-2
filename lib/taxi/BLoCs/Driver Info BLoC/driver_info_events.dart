import 'package:equatable/equatable.dart';

abstract class DriverEvent extends Equatable {
  const DriverEvent();

  @override
  List<Object> get props => [];
}

class SaveDriverData extends DriverEvent {
  final String name;
  final String phoneNumber;
  final String carBrand;
  final String carNumber;
  final String profilePhotoPath;
  final String licensePhotoPath;

  const SaveDriverData({
    required this.name,
    required this.phoneNumber,
    required this.carBrand,
    required this.carNumber,
    required this.profilePhotoPath,
    required this.licensePhotoPath,
  });

  @override
  List<Object> get props => [
    name,
    phoneNumber,
    carBrand,
    carNumber,
    profilePhotoPath,
    licensePhotoPath,
  ];
}