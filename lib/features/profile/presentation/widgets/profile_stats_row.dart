import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';

class ProfileStatsRow extends StatelessWidget {
  final double totalJarak;
  final double rataRataBbm;
  final int totalTrips;

  const ProfileStatsRow({
    super.key,
    required this.totalJarak,
    required this.rataRataBbm,
    required this.totalTrips,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderLight),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            _StatColumn(
              value: '${totalJarak.toStringAsFixed(2)} km',
              label: 'Total Jarak',
            ),
            const VerticalDivider(
              width: 1,
              thickness: 1,
              color: AppColors.borderLight,
            ),
            _StatColumn(
              value: '${rataRataBbm.toStringAsFixed(1)} km\\L',
              label: 'Rata Rata BBM',
            ),
            const VerticalDivider(
              width: 1,
              thickness: 1,
              color: AppColors.borderLight,
            ),
            _StatColumn(
              value: '$totalTrips',
              label: 'Total Trip',
            ),
          ],
        ),
      ),
    );
  }
}

class _StatColumn extends StatelessWidget {
  final String value;
  final String label;

  const _StatColumn({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
