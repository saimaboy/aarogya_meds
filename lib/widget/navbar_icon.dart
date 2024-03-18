import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final Function() onTap;
  final EdgeInsetsGeometry padding;

  const CustomIcon({
    super.key,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
    this.padding = const EdgeInsets.symmetric(vertical: 4.0),
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor = isSelected ? Colors.white : AppColors.textprimary;
    Color circleColor = isSelected ? AppColors.primary : Colors.transparent;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: circleColor,
              ),
            ),
            ColorFiltered(
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
              child: Image.asset(
                imagePath,
                width: 23,
                height: 23,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
