import 'package:deash_board/dash_board_app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => DashBoardApp(), // Wrap your app
    ),
  );
}
