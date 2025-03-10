import 'package:deash_board/core/utils/app_color.dart';
import 'package:deash_board/feature/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.white),
        canvasColor: AppColor.secondaryColor,
      ),
      title: "DashBoard",
    );
  }
}
