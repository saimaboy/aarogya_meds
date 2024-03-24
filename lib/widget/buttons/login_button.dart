import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppPrimaryBtn extends StatelessWidget {
  Function() onPressed;
  String btnText;
  AppPrimaryBtn({
    super.key,
    required this.onPressed,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                AppColors.primary
              ),
              fixedSize: MaterialStateProperty.all<Size>(
                const Size.fromHeight(60.0),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: appBorderRadius,
                ),
              ),
            ),
            child: Text(
              btnText,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}