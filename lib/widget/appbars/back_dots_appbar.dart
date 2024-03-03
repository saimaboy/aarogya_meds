import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class BackDots extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int? notifications;

  // ignore: use_key_in_widget_constructors
  const BackDots({required this.title, this.notifications});

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
            fontWeight: FontWeight.w500),
      ),
      actions: const [
        Icon(
          Icons.more_vert,
          size: 30,
          color: AppColors.primary,
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
