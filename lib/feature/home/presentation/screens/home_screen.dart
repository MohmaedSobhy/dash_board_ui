import 'package:deash_board/core/widget/adaptive_layout.dart';
import 'package:deash_board/feature/home/presentation/screens/app_home_screen.dart';
import 'package:deash_board/feature/home/presentation/screens/tablet_home_screen.dart';
import 'package:flutter/material.dart';

import 'desktop_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoute(
      appLayout: (context) {
        return AppHomeScreen();
      },
      tabletLayout: (context) {
        return TabletHomeScreen();
      },
      desktopLayout: (context) {
        return DesktopHomeScreen();
      },
    );
  }
}
