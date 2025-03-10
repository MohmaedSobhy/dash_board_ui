import 'package:flutter/widgets.dart';

abstract class MediaQueryServices {
  static bool isMobile(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 600) return true;
    return false;
  }

  static bool isTablet(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width >= 600 && width < 900) return true;
    return false;
  }

  static bool isDesktop(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width >= 900) return true;
    return false;
  }
}
