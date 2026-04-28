import 'package:fleetops_mobile/features/auth/presentation/widgets/clickable_text.dart';
import 'package:flutter/material.dart';
import 'package:fleetops_mobile/core/styles/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String rightTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final PreferredSizeWidget? bottom;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.rightTitle,
    this.actions,
    this.leading,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: AppColors.backgroundLight,
      automaticallyImplyLeading: false,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      leading: leading,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Center(
            child: ClickableText(
              text: rightTitle,
              style: TextStyle(color: AppColors.primary),
              onTap: () {
                Navigator.pushNamed(context, rightTitle == 'Masuk' ? '/login' : '/register');
              },
            ),
          ),
        ),
      ],
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}
