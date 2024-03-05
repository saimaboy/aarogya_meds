import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonWithLogo extends StatelessWidget {
  Function function;
  String buttonText;
  Icon icon;
  ButtonWithLogo(
      {super.key,
      required this.function,
      required this.buttonText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.only(
            left: size.width * 0.04,
            right: size.width * 0.04,
            top: size.width * 0.04,
            bottom: size.width * 0.02),
      ),
      onPressed: function(),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: icon,
          ),
          // Container(
          //   width: size.width * 0.6,
          //   child: Text("asd"),
          // ),
          Expanded(
            flex: 7,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(fontSize: size.width * 0.04),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
