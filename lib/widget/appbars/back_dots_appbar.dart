import 'package:aarogya_meds/screens/patients/Reminder/add_remider.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class BackDots extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int? notifications;
  final IconData? icon;
  final Function()? function;

  // ignore: use_key_in_widget_constructors
  const BackDots({required this.title, this.notifications,this.icon,this.function});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: AppColors.primary,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.primary,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        IconButton(onPressed:function, icon:Icon(icon))
      ],
    );
  }
}
