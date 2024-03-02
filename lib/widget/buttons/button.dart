// ignore_for_file: must_be_immutable

import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  Function function;
  String buttonText;
  Color color;
  ButtonPrimary(
      {super.key,
      required this.function,
      required this.buttonText,
      required this.color});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: appBorderRadius),
        ),
        onPressed: function(),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: size.width * 0.04,
            ),
          ),
        ),
      ),
    );
  }
}
