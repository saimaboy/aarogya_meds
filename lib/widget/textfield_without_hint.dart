import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class TextFieldWithoutHintText extends StatelessWidget {
  bool obsecureText=false;
  TextFieldWithoutHintText({super.key,required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: appBorderRadius,
        ),
      ),
      obscureText: obsecureText,
    );
  }
}
