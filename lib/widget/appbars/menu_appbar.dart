import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class MenuAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final int? notifications;
  final IconData? icon;
  final bool? isHome;

  // ignore: use_key_in_widget_constructors
  const MenuAppbar({
    this.title,
    this.notifications,
    this.icon,
    this.isHome = false,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      iconTheme: const IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text(
        title!,
        style: TextStyle(
          color: isHome == true ? AppColors.white : AppColors.primary,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
