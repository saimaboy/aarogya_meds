import 'package:aarogya_meds/widget/appbars/back_dots_appbar.dart';
import 'package:aarogya_meds/widget/appbars/menu_notification_appbar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BackDots(title: "Search"),
      body: Center(
        child: Text("This is Search"),
      ),
    );
  }
}
