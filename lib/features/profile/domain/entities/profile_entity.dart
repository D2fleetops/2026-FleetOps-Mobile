import 'package:equatable/equatable.dart';

class VehicleItem extends Equatable {
  final String name;
  final String plat;

  const VehicleItem({required this.name, required this.plat});

  @override
  List<Object> get props => [name, plat];
}

class ProfileEntity extends Equatable {
  final String driverName;
  final double totalJarak; // km
  final double rataRataBbm; // km/L
  final int totalTrips;
  final String activeVehicleName;
  final String activeVehiclePlat;
  final List<VehicleItem> otherVehicles;
  final String simExpiry;

  const ProfileEntity({
    required this.driverName,
    required this.totalJarak,
    required this.rataRataBbm,
    required this.totalTrips,
    required this.activeVehicleName,
    required this.activeVehiclePlat,
    required this.otherVehicles,
    required this.simExpiry,
  });

  @override
  List<Object> get props => [
    driverName,
    totalJarak,
    rataRataBbm,
    totalTrips,
    activeVehicleName,
    activeVehiclePlat,
    otherVehicles,
    simExpiry,
  ];
}
