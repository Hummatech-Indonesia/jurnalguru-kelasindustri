import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/theme_constants.dart';
import '../../widgets/ui_screen.dart';
import 'home/home_view.dart';
import 'journal/journal_view.dart';
import 'profile/profile_view.dart';
import 'widgets/custom_navigation_bar.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  static final pageController = Provider((ref) => PageController(
        initialPage: 1,
      ));

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  int _currentIndex = 0;

  final _screens = [
    const JournalView(),
    const HomeView(),
    const ProfileView(),
  ];

  @override
  void initState() {
    super.initState();

    _currentIndex = ref.read(MainScreen.pageController).initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return UIScreen(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    final controller = ref.watch(MainScreen.pageController);
    return Stack(
      children: [
        Positioned.fill(
          child: PageView(
            controller: controller,
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
              controller.animateToPage(
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
