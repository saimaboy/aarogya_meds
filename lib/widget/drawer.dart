import 'package:aarogya_meds/screens/patients/Reminder/reminder_screen.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget implements PreferredSizeWidget {
  const CustomDrawer({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Wenuk"),
            accountEmail: Text("wenuk@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("lib/assets/images/propic.jpg"),
            ),
            decoration: BoxDecoration(
              color: AppColors.primary,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined),
            title: const Text("Profile"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReminderScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_alarm),
            title: const Text("Reminds"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReminderScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text("About"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text("Logout", style: TextStyle(color: Colors.red)),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
