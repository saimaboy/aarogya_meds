import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbar_main.dart';
import 'package:flutter/material.dart';

class HomeMainOld extends StatefulWidget {
  const HomeMainOld({super.key});

  @override
  State<HomeMainOld> createState() => _HomeMainOldState();
}

class _HomeMainOldState extends State<HomeMainOld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarMain(
        title: 'Home',
      ),
      body: Column(
        children: [
          const Text(
            appName,
            style: TextStyle(
              fontSize: 25,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Find Medical Facility',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textprimary,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                5,
                (index) {
                  return Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            color: AppColors.white,
                            iconSize: 50,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.access_time_sharp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Item intex fff $index',
                            style: const TextStyle(
                              fontSize: 14,
                              color: AppColors.textprimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
