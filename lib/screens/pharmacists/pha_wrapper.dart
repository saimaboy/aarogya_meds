import 'package:aarogya_meds/screens/pharmacists/Drugs/pha_drugs.dart';
import 'package:aarogya_meds/screens/pharmacists/Home/pha_home_main.dart';
import 'package:aarogya_meds/screens/pharmacists/Inbox/pha_inbox.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/navbar_icon.dart';
import 'package:flutter/material.dart';

class PharmacistsWrapper extends StatefulWidget {
  const PharmacistsWrapper({super.key});

  @override
  State<PharmacistsWrapper> createState() => _PharmacistsWrapperState();
}

class _PharmacistsWrapperState extends State<PharmacistsWrapper> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const PhaHomeMain(),
    const PharmacistsDrugs(),
    const PhaInboxPage(),
  ];

  void onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Material(
        elevation: 5.0,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: CustomIcon(
                imagePath: 'lib/assets/icons/Home.png',
                isSelected: _selectedIndex == 0,
                onTap: () => onItemTap(0),
                padding: const EdgeInsets.only(top: 7.0),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomIcon(
                imagePath: 'lib/assets/icons/Pill.png',
                isSelected: _selectedIndex == 1,
                onTap: () => onItemTap(1),
                padding: const EdgeInsets.only(top: 7.0),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomIcon(
                imagePath: 'lib/assets/icons/Chat.png',
                isSelected: _selectedIndex == 2,
                onTap: () => onItemTap(2),
                padding: const EdgeInsets.only(top: 7.0),
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: onItemTap,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.bgcolor,
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
        ),
      ),
    );
  }
}
