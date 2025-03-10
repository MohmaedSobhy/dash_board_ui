import 'package:deash_board/core/utils/app_color.dart';
import 'package:deash_board/core/utils/app_text_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.numOfFiles,
  });

  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColor.primaryColor.withAlpha((0.15 * 255).toInt()),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          SizedBox(height: 20, width: 20, child: SvgPicture.asset(svgSrc)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
                  Text(
                    "$numOfFiles Files",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white70,
                      fontSize: getResponsiveFontSize(context, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles, maxLines: 1, overflow: TextOverflow.fade),
        ],
      ),
    );
  }
}
