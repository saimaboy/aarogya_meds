import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:aarogya_meds/api_endpoint.dart';
import 'package:aarogya_meds/models/pharmacy.dart';
import 'package:aarogya_meds/screens/patients/Reminder/add_remider.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbars/back_dots_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
    List<Pharmacy> reminds = [];
    final storage = FlutterSecureStorage();

  Future<String?> get token async {
    return await storage.read(key: 'api_token');
  }

  Future<List<Pharmacy>> fetchRemindDetails(String token) async {
  final url = ApiConfig.getEndpoint('schedule');
  final response = await http.get(
    Uri.parse(url),
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((item) => Pharmacy.fromJson(item)).toList();
  } else {
    throw Exception('Failed to reminder list');
  }
}

 @override
  void initState() {
    super.initState();
    token.then((tokenValue) {
      fetchRemindDetails(tokenValue as String).then((data) {
        setState(() {
          reminds = data;
        });
      }).catchError((e) {
        print('Error fetching reminder list: $e');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primary,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddReminderScreen()),
            );
          },
          child: const Icon(
            Icons.add,
            color: AppColors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: const BackDots(title: "Reminders", isHome: true),
        body: Padding(
          padding: EdgeInsets.only(top: size.height * 0.02),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white,
            ),
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                      height: size.height * 0.01,
                    ),
                itemCount: reminds.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.04),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primarylite,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.primary, width: 1),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Row(
                          children: [
                            Icon(Icons.add_alarm),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("reminds.Medicine Name 1,Medicine Name 2.....",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                Text("Selected days:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                Text("Time:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                Text("fequency for day:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}
