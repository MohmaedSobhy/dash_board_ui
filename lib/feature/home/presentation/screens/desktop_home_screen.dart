import 'package:deash_board/feature/home/presentation/views/custome_drawer.dart';
import 'package:deash_board/feature/home/presentation/views/dash_board_view.dart';
import 'package:deash_board/feature/home/presentation/views/header_view.dart';
import 'package:deash_board/feature/home/presentation/views/storage_details_view.dart';
import 'package:flutter/material.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 1, child: CustomeDrawer()),
          Expanded(
            flex: 5,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: HeaderView()),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(flex: 5, child: DashBoardView()),
                        const SizedBox(width: 16),
                        Expanded(flex: 2, child: StorageDetailsView()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
