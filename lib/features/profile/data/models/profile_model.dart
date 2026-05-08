import '../../domain/entities/profile_entity.dart';

class ProfileModel extends ProfileEntity {
  const ProfileModel({
    required super.driverName,
    required super.totalJarak,
    required super.rataRataBbm,
    required super.totalTrips,
    required super.activeVehicleName,
    required super.activeVehiclePlat,
    required super.otherVehicles,
    required super.simExpiry,
  });
}
