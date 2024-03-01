import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldWithoutHintText extends StatelessWidget {
  bool obsecureText=false;
  TextFieldWithoutHintText({super.key,required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
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
