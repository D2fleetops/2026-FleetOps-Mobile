import '../../domain/entities/dashboard_entity.dart';

class DashboardModel extends DashboardEntity {
  const DashboardModel({
    required super.driverName,
    required super.todayMiles,
    required super.tripsCompleted,
    required super.vehiclePlat,
    required super.vehicleName,
    required super.vehicleStatus,
    required super.isInspectionRequired,
  });
}
