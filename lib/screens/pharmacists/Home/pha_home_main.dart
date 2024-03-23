import 'package:aarogya_meds/screens/patients/Home/home_card.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbars/menu_appbar2.dart';
import 'package:flutter/material.dart';

class PhaHomeMain extends StatefulWidget {
  const PhaHomeMain({super.key});

  @override
  State<PhaHomeMain> createState() => _PhaHomeMainState();
}

class _PhaHomeMainState extends State<PhaHomeMain> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MenuAppbar2(
        title: "",
        isHome: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                  width: double.infinity,
                  height: 200,
                  child: const Padding(
                    padding: appPagePadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Good Morning Wenuk',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
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
                const SizedBox(height: 80),
                const Padding(
                  padding: appPagePadding,
                  child: Column(
                    children: [
                      Text(
                        'Today Orders',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: appPagePadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeCard(
                        title: 'Drug 1',
                        onTap: () {},
                      ),
                      HomeCard(
                        title: 'Drug 2',
                        onTap: () {},
                      ),
                      HomeCard(
                        title: 'Drug 3',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Padding(
                padding: appPagePadding,
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                      color: AppColors.primarylite,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                        child: SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Get latest drug news',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'This widget is the root of your application.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textprimary),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                                width: 110,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: appBorderRadius,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Learn More',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Image.asset('lib/assets/home-medical-drug.png')
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
