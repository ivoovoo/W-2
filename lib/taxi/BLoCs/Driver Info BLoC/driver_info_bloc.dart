import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Models/driver_model.dart';
import 'driver_info_events.dart';
import 'driver_info_state.dart';


class DriverBloc extends Bloc<DriverEvent, DriverState> {
  DriverBloc() : super(DriverInitial()) {
    on<SaveDriverData>(_onSaveDriverData);
  }

  Future<void> _onSaveDriverData(
      SaveDriverData event,
      Emitter<DriverState> emit,
      ) async {
    emit(DriverLoading());

    // Валидация данных
    if (!_validateName(event.name)) {
      emit(DriverError('Invalid name'));
      return;
    }

    if (!_validatePhoneNumber(event.phoneNumber)) {
      emit(DriverError('Invalid phone number'));
      return;
    }

    if (!_validateCarBrand(event.carBrand)) {
      emit(DriverError('Invalid car brand'));
      return;
    }

    if (!_validateCarNumber(event.carNumber)) {
      emit(DriverError('Invalid car number'));
      return;
    }

    // Сохранение данных в SharedPreferences
    final driver = Driver(
      name: event.name,
      phoneNumber: event.phoneNumber,
      carBrand: event.carBrand,
      carNumber: event.carNumber,
      profilePhotoPath: event.profilePhotoPath,
      licensePhotoPath: event.licensePhotoPath,
    );

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('driver', jsonEncode(driver.toMap()));

    emit(DriverSaved());
  }

  bool _validateName(String name) {
    final regex = RegExp(r'^[a-zA-Z\s]+$');
    return regex.hasMatch(name);
  }

  bool _validatePhoneNumber(String phoneNumber) {
    final regex = RegExp(r'^\+7\d{10}$');
    return regex.hasMatch(phoneNumber);
  }

  bool _validateCarBrand(String carBrand) {
    final validBrands = ['Toyota', 'BMW', 'Audi', 'Mercedes']; // добавить марку
    return validBrands.contains(carBrand);
  }

  bool _validateCarNumber(String carNumber) {
    final regex = RegExp(r'^[A-Z]\d{3}[A-Z]{2}$');
    return regex.hasMatch(carNumber);
  }
}