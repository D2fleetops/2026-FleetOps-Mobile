import 'package:flutter/material.dart';
import 'package:fleetops_mobile/core/styles/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shadowColor: AppColors.white,
        minimumSize: Size.fromHeight(50),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: AppColors.white)),
    );
  }
}
