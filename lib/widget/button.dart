import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Function function;
  String buttonText;
  Color color;
  Button(
      {super.key,
      required this.function,
      required this.buttonText,
      required this.color});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
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
    );
  }
}
