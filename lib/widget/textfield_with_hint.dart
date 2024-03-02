import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class TextFieldWithHintText extends StatelessWidget {
  String hintText;
  bool obsecureText = false;
  TextFieldWithHintText(
      {super.key, required this.hintText, required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: appBorderRadius,
        ),
      ),
      obscureText: obsecureText,
    );
  }
}
