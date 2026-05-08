import 'package:equatable/equatable.dart';

class DashboardEntity extends Equatable {
  final String driverName;
  final double todayMiles;
  final int tripsCompleted;
  final String vehiclePlat;
  final String vehicleName;
  final String vehicleStatus;
  final bool isInspectionRequired;

  const DashboardEntity({
    required this.driverName,
    required this.todayMiles,
    required this.tripsCompleted,
    required this.vehiclePlat,
    required this.vehicleName,
    required this.vehicleStatus,
    required this.isInspectionRequired,
  });

  @override
  List<Object> get props => [
    driverName,
    todayMiles,
    tripsCompleted,
    vehiclePlat,
    vehicleName,
    vehicleStatus,
    isInspectionRequired,
  ];
}
