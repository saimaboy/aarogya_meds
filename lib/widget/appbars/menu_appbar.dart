import 'package:aarogya_meds/screens/patients/wrapper.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class MenuAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final int? notifications;
  final IconData? icon;
  final Function()? function;
  final bool? isHome;

  

  // ignore: use_key_in_widget_constructors
  const MenuAppbar({
    this.title,
    this.notifications,
    this.icon,
    this.function,
    this.isHome = false,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: isHome == false ? AppColors.white : AppColors.primary,
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      centerTitle: true,
      leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white, // Change the color of the icon here
              ),
              onPressed: () {
                openDrawer(context);
              },
            );
          },
        ),
      title: Text(
        title!,
        style: TextStyle(
          color: isHome == true ? AppColors.white : AppColors.primary,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [IconButton(onPressed: function, icon: Icon(icon))],
    );
    
  }
}

Widget openDrawer(BuildContext context){
return Drawer(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.amber,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              child: Text(
                'Hello Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Home'),
              onTap: () {
                _scaffoldKey.currentState!.openEndDrawer();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Wrapper()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Home'),
              onTap: () {
                _scaffoldKey.currentState!.openEndDrawer();

                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Wrapper()));
              },
            ),
    ]));
}
GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();