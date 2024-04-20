import 'package:aarogya_meds/screens/patients/Auth/signin.dart';
import 'package:aarogya_meds/screens/patients/wrapper.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = FlutterSecureStorage();

  // Show a loading screen while checking for the token
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FutureBuilder<String?>(
      future: storage.read(key: 'api_token'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          final token = snapshot.data;
          return MyApp(token != null);
        }
      },
    ),
  ));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp(this.isLoggedIn, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SAD Venuk',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.bgcolor,
        ),
        home: const Wrapper() // Patients
        // home:  const PharmacistsWrapper(), // Pharmacists
        );
  }
}
