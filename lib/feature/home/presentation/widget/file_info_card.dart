import 'package:deash_board/core/utils/app_color.dart';
import 'package:deash_board/core/utils/app_text_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/model/my_files.dart';
import 'progress_line_widget.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({super.key, required this.info});

  final CloudStorageInfo info;

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(16 * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color!.withAlpha((0.1 * 255).toInt()),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  info.svgSrc!,
                  colorFilter: ColorFilter.mode(
                    info.color ?? Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Icon(Icons.more_vert, color: Colors.white54),
            ],
          ),
          Text(info.title!, maxLines: 1, overflow: TextOverflow.ellipsis),
          ProgressLine(color: info.color, percentage: info.percentage),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.numOfFiles} Files",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white70,
                  fontSize: getResponsiveFontSize(context, fontSize: 10),
                ),
              ),
              Text(
                info.totalStorage!,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white,
                  fontSize: getResponsiveFontSize(context, fontSize: 10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
