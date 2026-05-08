import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/dashboard_entity.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../models/dashboard_model.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  @override
  Future<Either<Failure, DashboardEntity>> getDashboard() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(
      DashboardModel(
        driverName: 'Budi Santoso',
        todayMiles: 142.0,
        tripsCompleted: 3,
        vehiclePlat: 'B1234 XYZ',
        vehicleName: 'Isuzu Giga',
        vehicleStatus: 'siap_berangkat',
        isInspectionRequired: true,
      ),
    );
  }
}
