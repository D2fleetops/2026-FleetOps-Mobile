import 'package:get_it/get_it.dart';

import 'features/dashboard/data/repositories/dashboard_repository_impl.dart';
import 'features/dashboard/domain/repositories/dashboard_repository.dart';
import 'features/dashboard/domain/usecases/get_dashboard_usecase.dart';
import 'features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'features/profile/data/repositories/profile_repository_impl.dart';
import 'features/profile/domain/repositories/profile_repository.dart';
import 'features/profile/domain/usecases/get_profile_usecase.dart';
import 'features/profile/presentation/bloc/profile_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Dashboard
  sl.registerFactory(() => DashboardBloc(getDashboard: sl()));
  sl.registerLazySingleton(() => GetDashboardUseCase(sl()));
  sl.registerLazySingleton<DashboardRepository>(
    () => DashboardRepositoryImpl(),
  );

  // Profile
  sl.registerFactory(() => ProfileBloc(getProfile: sl()));
  sl.registerLazySingleton(() => GetProfileUseCase(sl()));
  sl.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImpl());
}
