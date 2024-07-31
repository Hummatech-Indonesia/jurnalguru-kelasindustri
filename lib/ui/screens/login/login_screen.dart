import 'package:flutter/material.dart';

import '../../../utilities/extensions.dart';
import '../../theme/theme_constants.dart';
import '../../widgets/ui_screen.dart';
import '../../widgets/ui_text_form_field.dart';
import '../main/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return UIScreen(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              child: Column(
                children: [
                  24.heightBox,
                  Image.asset(
                    'assets/images/logo.png',
                    height: context.height * 0.075,
                  ),
                  Image.asset(
                    'assets/images/login_illustration.png',
                    height: context.height * 0.2,
                  ),
                  24.heightBox,
                  Text(
                    "Selamat Datang",
                    style: context.text.headlineLarge
                        ?.weight(Weight.bold)
                        .onPrimaryColor(),
                  ),
                  6.heightBox,
                  Text(
                    "Silahkan Masukan Akun Anda",
                    style: context.text.titleMedium?.onPrimaryColor(),
                  ),
                  24.heightBox,
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              decoration: BoxDecoration(
                color: context.color.surface,
                borderRadius: BorderRadius.only(
                  topLeft: ThemeConstants.largeRadius.topLeft,
                  topRight: ThemeConstants.largeRadius.topRight,
                ),
              ),
              padding: ThemeConstants.defaultPadding,
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: context.text.headlineLarge?.weight(Weight.bold),
                  ),
                  24.heightBox,
                  const UITextFormField(
                    label: "Nama",
                    hint: "Masukkan nama",
                  ),
                  12.heightBox,
                  const UITextFormField(
                    label: "Kata Sandi",
                    hint: "Masukkan kata sandi",
                  ),
                  24.heightBox,
                  FilledButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainScreen(),
                        ),
                      );
                    },
                    style: FilledButton.styleFrom(
                      textStyle:
                          context.text.titleMedium!.weight(Weight.semiBold),
                    ),
                    child: const Text("Login"),
                  ),
                  const Spacer(),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Developed by ",
                          style: context.text.bodyMedium?.weight(Weight.medium),
                        ),
                        TextSpan(
                          text: "Hummatech",
                          style: context.text.bodyMedium
                              ?.weight(Weight.medium)
                              .primaryColor(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
