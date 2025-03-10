import 'package:deash_board/core/utils/app_color.dart';
import 'package:deash_board/core/utils/app_text_responsive.dart';
import 'package:deash_board/feature/home/data/model/recent_file.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentFilesView extends StatelessWidget {
  const RecentFilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recent Files", style: Theme.of(context).textTheme.titleMedium),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: 16,
              columns: [
                DataColumn(label: Text("File Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Size")),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index], context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo, context) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(fileInfo.icon!, height: 30, width: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                fileInfo.title!,
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontSize: getResponsiveFontSize(
                    context,
                    fontSize: getResponsiveFontSize(context, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          fileInfo.date!,
          style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 15),
          ),
        ),
      ),
      DataCell(
        Text(
          fileInfo.size!,
          style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 15),
          ),
        ),
      ),
    ],
  );
}
