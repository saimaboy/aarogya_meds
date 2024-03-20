import 'package:aarogya_meds/screens/patients/Profile/profile_main.dart';
import 'package:aarogya_meds/screens/patients/Reminder/add_remider.dart';
import 'package:aarogya_meds/screens/patients/wrapper.dart';
import 'package:aarogya_meds/screens/patients/Auth/singin.dart';
import 'package:aarogya_meds/screens/patients/Pharmarcy/pharmacy_list.dart';
import 'package:aarogya_meds/screens/patients/Auth/siginup.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.bgcolor,
      ),
      home: const Wrapper(),
    );
  }
}
