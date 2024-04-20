import 'dart:convert';
import 'package:aarogya_meds/api_endpoint.dart';
import 'package:aarogya_meds/screens/patients/Auth/auth_service.dart';
import 'package:aarogya_meds/screens/patients/Auth/signin.dart';
import 'package:aarogya_meds/screens/patients/Reminder/reminder_screen.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class CustomDrawer extends StatelessWidget implements PreferredSizeWidget {
  CustomDrawer({super.key});

  final storage = const FlutterSecureStorage();

  Future<void> logout(context) async {
    await storage.delete(key: 'api_token');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const AppSignin(),
      ),
    );
  }

  Future<Map<String, dynamic>?> fetchProfileDetails(String token) async {
    final url = ApiConfig.getEndpoint('auth/register');
    final response = await http.get(
      Uri.parse(url),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load profile details');
    }
  }

  final AuthService authService = AuthService();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: FutureBuilder<String>(
              future: authService.getFirstName,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!);
                } else if (snapshot.hasError) {
                  return Text("Error: ${snapshot.error}");
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            accountEmail: const Text("wenuk@gmail.com"),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage("lib/assets/images/propic.jpg"),
            ),
            decoration: const BoxDecoration(
              color: AppColors.primary,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined),
            title: const Text("Profile"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReminderScreen()));
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
            onTap: () {
              logout(context);
            },
          )
        ],
      ),
    );
  }
}
