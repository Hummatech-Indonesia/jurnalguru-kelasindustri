import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utilities/extensions.dart';
import '../../notifiers/auth/auth_notifier.dart';
import '../../routes/routes.dart';
import '../../theme/theme_constants.dart';
import '../../widgets/ui_screen.dart';
import '../../widgets/ui_text_form_field.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();

    ref.read(authNotifierProvider.notifier).checkLogin();
  }

  @override
  void dispose() {
    super.dispose();

    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authNotifierProvider, (previous, next) {
      if (next.isLoggedIn) {
        Navigator.of(context).pushReplacementNamed(Routes.main);
      }
      if (next.failure != null) {
        next.failure!.snackbar(context);
      }
    });

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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      "Login",
                      style: context.text.headlineLarge?.weight(Weight.bold),
                    ),
                    24.heightBox,
                    UITextFormField(
                      label: "Email",
                      hint: "Masukkan email",
                      controller: _emailController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Email tidak boleh kosong";
                        }

                        if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                          return "Email tidak valid";
                        }

                        return null;
                      },
                    ),
                    12.heightBox,
                    UITextFormField(
                      label: "Kata Sandi",
                      hint: "Masukkan kata sandi",
                      controller: _passwordController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),
                      obscureText: !_isPasswordVisible,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Kata sandi tidak boleh kosong";
                        }
                        return null;
                      },
                    ),
                    24.heightBox,
                    FilledButton(
                      onPressed: _submit,
                      style: FilledButton.styleFrom(
                        textStyle:
                            context.text.titleMedium!.weight(Weight.semiBold),
                      ),
                      child: Consumer(
                        builder: (context, ref, child) {
                          final isLading = ref.watch(authNotifierProvider
                              .select((state) => state.isLoading));

                          if (isLading) {
                            return const CircularProgressIndicator();
                          }

                          return const Text("Login");
                        },
                      ),
                    ),
                    const Spacer(),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Developed by ",
                            style:
                                context.text.bodyMedium?.weight(Weight.medium),
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
          ),
        ],
      ),
    );
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      ref.read(authNotifierProvider.notifier).login(
            _emailController.text,
            _passwordController.text,
          );
    }
  }
}
