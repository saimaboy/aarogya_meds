import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                  width: double.infinity,
                  child: const Padding(
                    padding: appPagePadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Text(
                          'Good Morning Saantha',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white),
                        ),
                        Text(
                          'What do you want to do today?',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning Saantha',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text('What do you want to do today?'),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 220,
            left: 0,
            right: 0,
            child: Padding(
              padding: appPagePadding,
              child: Container(
                height: 160,
                decoration: BoxDecoration(
                    color: AppColors.primarylite,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    const Column(
                      children: [
                        Text('data'),
                        Text('data'),
                        Text('data'),
                      ],
                    ),
                    Image(
                        image: AssetImage('../../images/home-medical-drug.png'))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
