import 'package:deash_board/feature/home/presentation/views/header_view.dart';
import 'package:flutter/material.dart';

import '../views/custome_drawer.dart';
import '../views/dash_board_view.dart';
import '../views/storage_details_view.dart';

class TabletHomeScreen extends StatefulWidget {
  const TabletHomeScreen({super.key});

  @override
  State<TabletHomeScreen> createState() => _TabletHomeScreenState();
}

class _TabletHomeScreenState extends State<TabletHomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 90),
        child: HeaderView(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(flex: 5, child: DashBoardView()),
              const SizedBox(width: 16),
              Expanded(flex: 3, child: StorageDetailsView()),
            ],
          ),
        ),
      ),
      drawer: CustomeDrawer(),
    );
  }
}
