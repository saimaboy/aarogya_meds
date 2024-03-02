import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldWithHintText extends StatelessWidget {
  String hintText;
  bool obsecureText=false;
  TextFieldWithHintText({super.key, required this.hintText,required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      ),
      obscureText: obsecureText,
    );
  }
}
