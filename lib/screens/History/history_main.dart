import 'package:aarogya_meds/widget/appbar_main.dart';
import 'package:flutter/material.dart';

class HistoryMain extends StatefulWidget {
  const HistoryMain({super.key});

  @override
  State<HistoryMain> createState() => _HistoryMainState();
}

class _HistoryMainState extends State<HistoryMain> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarMain(
        title: 'History',
      ),
      body: Center(
        child: Text('History'),
      ),
    );
  }
}
