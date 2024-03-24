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
  final List<Pharmacy> pharmacy = [
    Pharmacy(
      id: 1,
      pharmacyName: "Pharmacy Name 1",
      location: "Colombo",
      status: "Open",
    ),
    Pharmacy(
      id: 2,
      pharmacyName: "Pharmacy Name 2",
      location: "Colombo",
      status: "Close",
    ),
    Pharmacy(
      id: 3,
      pharmacyName: "Pharmacy Name 3",
      location: "Homagama",
      status: "Open",
    ),
    Pharmacy(
      id: 4,
      pharmacyName: "Pharmacy Name 4",
      location: "Colombo",
      status: "Close",
    ),
  ];

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
                itemCount: pharmacy.length,
                itemBuilder: (BuildContext context, index) {
                  return PharmacyCard(
                    pharmacy: pharmacy[index],
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
