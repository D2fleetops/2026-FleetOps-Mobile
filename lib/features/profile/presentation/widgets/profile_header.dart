import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';

class ProfileHeader extends StatelessWidget {
  final String driverName;

  const ProfileHeader({
    super.key,
    required this.driverName,
  });

  String _initials(String name) {
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return parts[0].substring(0, parts[0].length >= 2 ? 2 : 1).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 44,
          backgroundColor: AppColors.primary,
          child: Text(
            _initials(driverName),
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          driverName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}
