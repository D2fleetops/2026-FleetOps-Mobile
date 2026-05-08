import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../features/dashboard/presentation/bloc/dashboard_bloc.dart';
import '../../../../features/dashboard/presentation/bloc/dashboard_event.dart';
import '../../../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../../../features/profile/presentation/bloc/profile_bloc.dart';
import '../../../../features/profile/presentation/bloc/profile_event.dart';
import '../../../../features/profile/presentation/pages/profile_page.dart';
import '../../../../injection_container.dart';
import '../blocs/bottom_nav_cubit.dart';
import '../blocs/bottom_nav_state.dart';
import '../widgets/bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const String routeName = '/main';

  @override
  Widget build(BuildContext context) {
    final pages = [
      BlocProvider(
        create: (_) => sl<DashboardBloc>()..add(const LoadDashboardEvent()),
        child: const DashboardPage(),
      ),
      const Placeholder(), // Perjalanan
      const Placeholder(), // Inspeksi
      BlocProvider(
        create: (_) => sl<ProfileBloc>()..add(const LoadProfileEvent()),
        child: const ProfilePage(),
      ),
    ];

    return BlocProvider(
      create: (_) => BottomNavCubit(),
      child: Scaffold(
        body: BlocBuilder<BottomNavCubit, BottomNavState>(
          builder: (context, state) {
            return IndexedStack(index: state.index, children: pages);
          },
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
