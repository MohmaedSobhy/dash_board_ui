import 'package:deash_board/core/services/media_query_services.dart';
import 'package:deash_board/core/utils/app_color.dart';
import 'package:deash_board/core/widget/adaptive_layout.dart';
import 'package:deash_board/feature/home/presentation/views/file_info_grid_view.dart';
import 'package:deash_board/feature/home/presentation/views/recent_file_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            Text("My Files", style: Theme.of(context).textTheme.titleMedium),
            const Spacer(),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16 * 1.5,
                  vertical: 16 / (MediaQueryServices.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add New"),
            ),
          ],
        ),
        const SizedBox(height: 8),
        AdaptiveLayoute(
          appLayout: (context) {
            return FileInfoCardGridView(
              crossAxisCount: 2,
              childAspectRatio:
                  MediaQuery.sizeOf(context).width < 650 ? 1.3 : 1,
            );
          },
          desktopLayout: (context) {
            return FileInfoCardGridView(
              childAspectRatio: 1 / 0.8,
              crossAxisCount: 4,
            );
          },
          tabletLayout: (context) {
            return FileInfoCardGridView(childAspectRatio: 1);
          },
        ),
        const SizedBox(height: 16),
        const RecentFilesView(),
      ],
    );
  }
}
