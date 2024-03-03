// ignore_for_file: must_be_immutable

import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  String title;
  Function()? onTap;
  HomeCard({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 130,
        decoration: BoxDecoration(
            color: AppColors.primarylite,
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset('lib/assets/home-medical-drug.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
