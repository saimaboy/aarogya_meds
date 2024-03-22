// ignore_for_file: must_be_immutable

import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final Function() function;
  final String buttonText;
  const ButtonPrimary({
    super.key,
    required this.function,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: appBorderRadius),
      ),
      onPressed: function,
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: size.width * 0.04,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
