import 'package:aarogya_meds/screens/Home/home_main.dart';
import 'package:aarogya_meds/screens/Home/home_main_old.dart';
import 'package:aarogya_meds/utils/common.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.bgcolor,
      ),
      home: const HomeMain(),
    );
  }
}
