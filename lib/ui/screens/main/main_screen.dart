import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/theme_constants.dart';
import '../../widgets/ui_screen.dart';
import 'home/home_view.dart';
import 'journal/journal_view.dart';
import 'profile/profile_view.dart';
import 'widgets/custom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 1;

  final _screens = [
    const JournalView(),
    const HomeView(),
    const ProfileView(),
  ];

  late final _pageController = PageController(
    initialPage: _currentIndex,
  );

  @override
  Widget build(BuildContext context) {
    return UIScreen(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Positioned.fill(
          child: PageView(
            controller: _pageController,
            children: _screens,
            onPageChanged: (value) => setState(() {
              _currentIndex = value;
            }),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: CustomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              _pageController.animateToPage(
                index,
                duration: ThemeConstants.navigationBarAnimationDuration,
                curve: ThemeConstants.navigationBarAnimationCurve,
              );
            },
            items: const [
              CustomNavigationItem(
                title: "Jurnal",
                icon: FontAwesomeIcons.idCard,
              ),
              CustomNavigationItem(
                title: "Home",
                icon: FontAwesomeIcons.house,
              ),
              CustomNavigationItem(
                title: "Profile",
                icon: FontAwesomeIcons.person,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
