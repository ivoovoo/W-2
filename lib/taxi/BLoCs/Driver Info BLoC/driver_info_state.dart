import 'package:equatable/equatable.dart';

abstract class DriverState extends Equatable {
  const DriverState();

  @override
  List<Object> get props => [];
}

class DriverInitial extends DriverState {}

class DriverLoading extends DriverState {}

class DriverSaved extends DriverState {}

class DriverError extends DriverState {
  final String message;

  const DriverError(this.message);

  @override
  List<Object> get props => [message];
}