import 'package:flutter/material.dart';

class AdaptiveLayoute extends StatelessWidget {
  final WidgetBuilder appLayout, desktopLayout, tabletLayout;
  const AdaptiveLayoute({
    super.key,
    required this.appLayout,
    required this.desktopLayout,
    required this.tabletLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > 900) {
          return desktopLayout(context);
        } else if (constrains.maxWidth > 600) {
          return tabletLayout(context);
        } else {
          return appLayout(context);
        }
      },
    );
  }
}
