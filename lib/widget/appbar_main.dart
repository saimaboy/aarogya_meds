import 'package:flutter/material.dart';

class CustomAppBarMain extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBarMain({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      centerTitle: true,
    );
  }
}
