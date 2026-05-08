import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/styles/app_colors.dart';
import '../bloc/dashboard_bloc.dart';
import '../bloc/dashboard_event.dart';
import '../bloc/dashboard_state.dart';
import '../widgets/greeting_section.dart';
import '../widgets/inspection_card.dart';
import '../widgets/stats_card.dart';
import '../widgets/vehicle_status_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          if (state is DashboardLoading || state is DashboardInitial) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            );
          }

          if (state is DashboardError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: AppColors.textSecondary),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context
                        .read<DashboardBloc>()
                        .add(const LoadDashboardEvent()),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          if (state is DashboardLoaded) {
            final e = state.entity;
            return SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    GreetingSection(
                      driverName: e.driverName,
                      vehicleStatus: e.vehicleStatus,
                    ),
                    const SizedBox(height: 20),
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: StatsCard(
                              label: 'Total Jarak',
                              value: e.todayMiles.toStringAsFixed(0),
                              subtitle: 'Mil',
                              icon: Icons.route,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: StatsCard(
                              label: 'Trips Selesai',
                              value: e.tripsCompleted.toString(),
                              subtitle: 'Selesai',
                              icon: Icons.check_circle_outline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    VehicleStatusCard(
                      vehicleStatus: e.vehicleStatus,
                      vehiclePlat: e.vehiclePlat,
                      vehicleName: e.vehicleName,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Perlu Perhatian',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 12),
                    InspectionCard(isRequired: e.isInspectionRequired),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}