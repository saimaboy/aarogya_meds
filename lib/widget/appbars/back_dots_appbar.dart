import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class BackDots extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final int? notifications;
  final IconData? icon;
  final Function()? function;
  final bool? isHome;

  // ignore: use_key_in_widget_constructors
  const BackDots({
    this.title,
    this.notifications,
    this.icon,
    this.function,
    this.isHome = false,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: isHome == false ? AppColors.white : AppColors.primary,
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: isHome == true ? AppColors.white : AppColors.primary,
        ),
      ),
      title: Text(
        title!,
        style: TextStyle(
          color: isHome == true ? AppColors.white : AppColors.primary,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [IconButton(onPressed: function, icon: Icon(icon))],
    );
  }
}
