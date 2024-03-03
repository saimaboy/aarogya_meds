import 'package:aarogya_meds/screens/Home/home_main.dart';
import 'package:aarogya_meds/screens/log_in_page.dart';
import 'package:aarogya_meds/screens/my_meds_page.dart';
import 'package:aarogya_meds/screens/sing_in_page.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/card.dart';
import 'package:aarogya_meds/widget/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SAD Venuk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.bgcolor,
      ),
      home: const MyMedsPage(),
    );
  }
}
