import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/repositories/profile_repository.dart';
import '../models/profile_model.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(
      ProfileModel(
        driverName: 'Budi Santoso',
        totalJarak: 1.84,
        rataRataBbm: 12.3,
        totalTrips: 47,
        activeVehicleName: 'Ford Transit',
        activeVehiclePlat: 'B 1234 XYZ',
        otherVehicles: [
          VehicleItem(name: 'Mercedes Benz Sprinter', plat: 'B 5678 ABC'),
          VehicleItem(name: 'Toyota HiAce', plat: 'B 9012 DEF'),
        ],
        simExpiry: '2028',
      ),
    );
  }
}
