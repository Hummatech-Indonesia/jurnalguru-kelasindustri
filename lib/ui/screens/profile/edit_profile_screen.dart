import 'package:flutter/material.dart';

import '../../../../../utilities/extensions.dart';
import '../../theme/theme_constants.dart';
import '../../widgets/ui_screen.dart';
import '../../widgets/ui_text_form_field.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: context.color.onPrimary,
                  width: 4,
                ),
              ),
              child: CircleAvatar(
                backgroundColor: context.color.primary,
                foregroundImage: const NetworkImage(
                  "https://avatars.githubusercontent.com/u/100644863?v=4",
                ),
              ),
            ),
            24.heightBox,
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text("Edit Foto"),
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
            _buildSectionTitle(context, "Edit Profile"),
            24.heightBox,
            const UITextFormField(
              label: "Nama",
              hint: "Masukkan nama",
            ),
            16.heightBox,
            const UITextFormField(
              label: "Email",
              hint: "Masukkan email anda",
            ),
            24.heightBox,
            const UITextFormField(
              label: "No Telp",
              hint: "**** **** ****",
            ),
            24.heightBox,
            const UITextFormField(
              label: "Alamat",
              hint: "Masukkan alamat anda",
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
