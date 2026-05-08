import 'package:fleetops_mobile/features/auth/presentation/widgets/clickable_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static const String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(title: 'FleetOps', rightTitle: 'Masuk'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
              child: inputCard(context),
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
      ),
    );
  }

  Container inputCard(BuildContext context) {
    return Container(
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
                      'Buat Akun Anda',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      'Daftarkan diri Anda untuk mulai menggunakan layanan.',
                    ),
                    SizedBox(height: 24.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nama Lengkap'),
                        SizedBox(height: 4.0),
                        CustomTextField(
                          hintText: 'Masukan Nama Lengkap',
                          prefixIcon: Icons.person_outline,
                        ),
                        SizedBox(height: 16.0),
                        Text('Email'),
                        SizedBox(height: 4.0),
                        CustomTextField(
                          hintText: 'Masukan Email',
                          prefixIcon: Icons.email_outlined,
                        ),
                        SizedBox(height: 16.0),

                        Text('Kata Sandi'),
                        SizedBox(height: 4.0),
                        CustomTextField(
                          hintText: 'Masukan Kata Sandi',
                          prefixIcon: Icons.lock_outline,
                          obscureText: true,
                        ),
                        SizedBox(height: 16.0),
                        Text('Konfirmasi Kata Sandi'),
                        SizedBox(height: 4.0),
                        CustomTextField(
                          hintText: 'Konfirmasi Kata Sandi',
                          prefixIcon: Icons.lock_outline,
                          obscureText: true,
                        ),
                        SizedBox(height: 24.0),
                        CustomButton(text: 'Daftar', onPressed: () {}),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sudah punya akun?'),
                        SizedBox(width: 4.0),
                        ClickableText(
                          text: 'Masuk',
                          style: TextStyle(color: AppColors.primary),
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
  }
}
