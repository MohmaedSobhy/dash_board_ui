import 'package:deash_board/core/utils/app_color.dart';
import 'package:flutter/widgets.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
    this.color = AppColor.primaryColor,
    required this.percentage,
  });

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withAlpha((0.1 * 255).toInt()),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder:
              (context, constraints) => Container(
                width: constraints.maxWidth * (percentage! / 100),
                height: 5,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
        ),
      ],
    );
  }
}
