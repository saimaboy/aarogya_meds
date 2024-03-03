import 'package:aarogya_meds/screens/Home/home_main.dart';
import 'package:aarogya_meds/screens/pill.dart';
import 'package:aarogya_meds/screens/search.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final Function() onTap;
  final EdgeInsetsGeometry padding;

  const CustomIcon({
    super.key,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
    this.padding = const EdgeInsets.symmetric(vertical: 4.0),
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor = isSelected ? Colors.white : AppColors.textprimary;
    Color circleColor = isSelected ? AppColors.primary : Colors.transparent;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: circleColor,
              ),
            ),
            ColorFiltered(
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
              child: Image.asset(
                imagePath,
                width: 23,
                height: 23,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
