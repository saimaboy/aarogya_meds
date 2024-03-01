import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:sadvenuk/screens/log_in_page.dart';
import 'package:sadvenuk/screens/wrapper.dart';
=======
import 'package:aarogya_meds/screens/wrapper.dart';
>>>>>>> 1726b29d07a0b5e3326f5d22feda36b90f16813a

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LogInScreen(),
    );
  }
}
