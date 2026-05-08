import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';

class VehicleStatusCard extends StatelessWidget {
  final String vehicleStatus;
  final String vehiclePlat;
  final String vehicleName;

  const VehicleStatusCard({
    super.key,
    required this.vehicleStatus,
    required this.vehiclePlat,
    required this.vehicleName,
  });

  String _statusLabel(String status) {
    switch (status) {
      case 'sedang_bertugas':
        return 'Sedang Bertugas';
      case 'siap_berangkat':
      default:
        return 'Siap Berangkat';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'STATUS KENDARAAN',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            _statusLabel(vehicleStatus),
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '$vehiclePlat — $vehicleName',
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
