import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bottom_nav_cubit.dart';
import '../blocs/bottom_nav_state.dart';
import '../widgets/bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const String routeName = '/main';

  @override
  Widget build(BuildContext context) {
    final pages = [
      // GANTI DENGAN PAGE DARI FEATURE YANG SESUAI
      const Placeholder(), // Home
      const Placeholder(), // Perjalanan
      const Placeholder(), // Inspeksi
      const Placeholder(), // Profile
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
