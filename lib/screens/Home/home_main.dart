import 'package:aarogya_meds/widget/appbar_main.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarMain(
        title: 'Home',
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
