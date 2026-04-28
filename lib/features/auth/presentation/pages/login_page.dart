import 'package:fleetops_mobile/core/styles/app_colors.dart';
import 'package:fleetops_mobile/features/auth/presentation/pages/register_page.dart';
import 'package:fleetops_mobile/features/auth/presentation/widgets/clickable_text.dart';
import 'package:fleetops_mobile/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fleetops_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:fleetops_mobile/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(title: 'FleetOps', rightTitle: 'Regist'),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Datang Kembali',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        Text('Masuk untuk melanjutkan'),
                        SizedBox(height: 24.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Email'),
                            SizedBox(height: 4.0),
                            CustomTextField(
                              hintText: 'Masukan Email',
                              prefixIcon: Icons.email_outlined,
                            ),
                            SizedBox(height: 16.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Password'),
                                Text(
                                  'Lupa password?',
                                  style: TextStyle(color: AppColors.primary),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.0),
                            CustomTextField(
                              hintText: 'Masukan Password',
                              prefixIcon: Icons.lock_outline,
                              obscureText: true,
                            ),
                            SizedBox(height: 24.0),
                            CustomButton(text: 'Masuk', onPressed: () {}),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Belum punya akun?'),
                            SizedBox(width: 4.0),
                            ClickableText(text: 'Register', style: TextStyle(color: AppColors.primary), onTap: (){
                              Navigator.pushNamed(context, RegisterPage.routeName);
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              '© 2026 FleetOps. All Rights Reserved.',
              style: TextStyle(color: AppColors.grey500, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
