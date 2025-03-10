import 'package:deash_board/feature/home/presentation/views/custome_drawer.dart';
import 'package:deash_board/feature/home/presentation/views/dash_board_view.dart';
import 'package:deash_board/feature/home/presentation/views/header_view.dart';
import 'package:deash_board/feature/home/presentation/views/storage_details_view.dart';
import 'package:flutter/material.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({super.key});

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: DashBoardView()),
            SliverToBoxAdapter(child: StorageDetailsView()),
          ],
        ),
      ),
      drawer: CustomeDrawer(),
    );
  }
}
