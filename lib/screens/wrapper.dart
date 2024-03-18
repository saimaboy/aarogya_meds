import 'package:aarogya_meds/screens/Home/home_main.dart';
import 'package:aarogya_meds/screens/pill.dart';
import 'package:aarogya_meds/screens/search.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/navbar_icon.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeMain(),
    const SearchPage(),
    const PillPage(),
    const PillPage(),
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
                imagePath: 'lib/assets/icons/Calendar.png',
                isSelected: _selectedIndex == 0,
                onTap: () => onItemTap(0),
                padding: const EdgeInsets.only(top: 7.0),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomIcon(
                imagePath: 'lib/assets/icons/Search.png',
                isSelected: _selectedIndex == 1,
                onTap: () => onItemTap(1),
                padding: const EdgeInsets.only(top: 7.0),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomIcon(
                imagePath: 'lib/assets/icons/Pill.png',
                isSelected: _selectedIndex == 2,
                onTap: () => onItemTap(2),
                padding: const EdgeInsets.only(top: 7.0),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomIcon(
                imagePath: 'lib/assets/icons/Menu.png',
                isSelected: _selectedIndex == 3,
                onTap: () => onItemTap(3),
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