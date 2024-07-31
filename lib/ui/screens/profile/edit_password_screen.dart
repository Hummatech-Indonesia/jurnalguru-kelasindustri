import 'package:flutter/material.dart';

import '../../../../../utilities/extensions.dart';
import '../../theme/theme_constants.dart';
import '../../widgets/ui_screen.dart';
import '../../widgets/ui_text_form_field.dart';

class EditPasswordScreen extends StatefulWidget {
  const EditPasswordScreen({super.key});

  @override
  State<EditPasswordScreen> createState() => _EditPasswordScreenState();
}

class _EditPasswordScreenState extends State<EditPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return UIScreen(
      body: Column(
        children: [
          _buildHeader(context),
          Expanded(child: _buildBody(context)),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: ThemeConstants.defaultPadding,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton.filled(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: context.color.surface,
                        foregroundColor: context.color.onSurface,
                      ),
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      "Kelas Industri",
                      style: context.text.titleLarge
                          ?.weight(Weight.bold)
                          .onPrimaryColor(),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            24.heightBox,
            Image.asset(
              "assets/images/change_password_illustration.png",
              height: 200,
            ),
            12.heightBox,
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.surface,
        borderRadius: BorderRadius.only(
          topLeft: ThemeConstants.largeRadius.topLeft,
          topRight: ThemeConstants.largeRadius.topRight,
        ),
      ),
      child: SingleChildScrollView(
        padding: ThemeConstants.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ThemeConstants.defaultPadding.top.heightBox,
            _buildSectionTitle(context, "Ubah Password"),
            24.heightBox,
            const UITextFormField(
              label: "Password Lama",
              hint: "********",
            ),
            16.heightBox,
            const UITextFormField(
              label: "Password Baru",
              hint: "********",
            ),
            24.heightBox,
            const UITextFormField(
              label: "Konfirmasi Password",
              hint: "********",
            ),
            24.heightBox,
            FilledButton(
              onPressed: () {},
              child: const Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Center(
      child: Text(
        title,
        style: context.text.titleLarge?.weight(Weight.bold),
      ),
    );
  }
}
