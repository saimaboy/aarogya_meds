import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:aarogya_meds/api_endpoint.dart';
import 'package:aarogya_meds/models/pharmacy.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbars/back_dots_appbar.dart';
import 'package:aarogya_meds/widget/cards/pharmacy_card.dart';
import 'package:flutter/material.dart';

class PharmacyList extends StatefulWidget {
  const PharmacyList({super.key});

  @override
  State<PharmacyList> createState() => _PharmacyListState();
}

class _PharmacyListState extends State<PharmacyList> {

  final storage = FlutterSecureStorage();
  List<Pharmacy> pharmacies = [];


  Future<String?> get token async {
    return await storage.read(key: 'api_token');
  }

  Future<List<Pharmacy>> fetchPharmacyDetails(String token) async {
  final url = ApiConfig.getEndpoint('pharmacies');
  final response = await http.get(
    Uri.parse(url),
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((item) => Pharmacy.fromJson(item)).toList();
  } else {
    throw Exception('Failed to pharmacies list');
  }
}
  @override
  void initState() {
    super.initState();
    fetchPharmacyDetails(token as String).then((data) {
      setState(() {
        pharmacies = data;
      });
    }).catchError((e) {
      print('Error fetching profile details: $e');
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const BackDots(title: "Pharmacies", isHome: true),
      body: Padding(
        padding: appPagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Close to <Location>",
              style: TextStyle(
                  fontSize: size.width * 0.04, fontWeight: FontWeight.w500),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: pharmacies.length,
                itemBuilder: (BuildContext context, index) {
                  final pharmacy = pharmacies[index];
                  return PharmacyCard(
                    pharmacy: pharmacies[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
