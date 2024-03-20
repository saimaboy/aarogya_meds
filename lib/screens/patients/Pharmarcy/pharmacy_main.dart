import 'package:aarogya_meds/widget/appbars/back_dots_appbar.dart';
import 'package:flutter/material.dart';

class PharmacyMain extends StatefulWidget {
  final int pharmacyId;
  const PharmacyMain({required this.pharmacyId, super.key});

  @override
  State<PharmacyMain> createState() => _PharmacyMainState();
}

class _PharmacyMainState extends State<PharmacyMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackDots(title: "Pharmacy ${widget.pharmacyId}"),
      body: Text("Pharmacy ${widget.pharmacyId}"),
    );
  }
}
