import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utilities/extensions.dart';
import '../../../providers/auth/auth_notifier.dart';
import '../../../routes/routes.dart';
import '../../../theme/theme.dart';
import '../../../theme/theme_constants.dart';
import '../widgets/custom_navigation_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(context),
        Expanded(child: _buildBody(context)),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: ThemeConstants.defaultPadding,
        child: Consumer(
          builder: (context, ref, child) {
            final user = ref.watch(
              authNotifierProvider.select((value) => value.user),
            );

            return Column(
              children: [
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
                    foregroundImage: NetworkImage(
                      "https://ui-avatars.com/api/?name=${user?.name ?? ""}",
                    ),
                  ),
                ),
                16.heightBox,
                Text(
                  user?.name ?? "-",
                  style: context.text.titleLarge
                      ?.weight(Weight.bold)
                      .onPrimaryColor(),
                ),
                6.heightBox,
                Text(
                  user?.email ?? "-",
                  style: context.text.bodyMedium?.onPrimaryColor(),
                ),
                12.heightBox,
              ],
            );
          },
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
        padding: const EdgeInsets.only(bottom: CustomNavigationBar.height),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ThemeConstants.defaultPadding.top.heightBox,
            _buildSectionTitle(context, "Pengaturan"),
            24.heightBox,
            // _buildSettingItem(
            //     context, 0, FontAwesomeIcons.solidUser, "Edit Profile", () {
            //   Navigator.of(context).push(
            //     MaterialPageRoute(
            //       builder: (context) => const EditProfileScreen(),
            //     ),
            //   );
            // }),
            // 8.widthBox,
            // _buildSettingItem(
            //   context,
            //   1,
            //   FontAwesomeIcons.key,
            //   "Ubah Password",
            //   () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) => const EditPasswordScreen(),
            //       ),
            //     );
            //   },
            // ),
            // 8.widthBox,
            Consumer(builder: (context, ref, child) {
              return _buildSettingItem(
                context,
                2,
                FontAwesomeIcons.rightFromBracket,
                "Logout",
                () async {
                  await ref.read(authNotifierProvider.notifier).logout();

                  if (context.mounted) {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    Navigator.of(context).pushReplacementNamed(Routes.login);
                  }
                },
              );
            }),
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

  Widget _buildSettingItem(
    BuildContext context,
    int i,
    IconData icon,
    String title, [
    VoidCallback? onTap,
  ]) {
    return Material(
      color: i % 2 == 0
          ? context.color.surfaceDim.withOpacity(0.25)
          : context.color.surface,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: ThemeConstants.defaultPadding,
          child: Row(
            children: [
              Icon(icon),
              16.widthBox,
              Text(
                title,
                style: context.text.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
