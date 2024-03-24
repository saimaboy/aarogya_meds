import 'package:aarogya_meds/models/pharmacy.dart';
import 'package:aarogya_meds/screens/patients/Pharmarcy/selected_pharmacy_screen.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class PharmacyCard extends StatelessWidget {
  const PharmacyCard({super.key, required this.pharmacy});

  final Pharmacy pharmacy;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.width * 0.04),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SelectedPharmacyScreen(
                pharmacyId: pharmacy.id!,
              ),
            ),
          );
        },
        child: Container(
          width: size.width * 0.9,
          height: size.width * 0.28,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: AppColors.primarylite,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                      'lib/assets/home-medical-drug.png'), // pharmacy logo
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pharmacy.pharmacyName!,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(pharmacy.location!),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                            color: pharmacy.status == "Open"
                                ? Colors.green
                                : Colors.red),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 1, horizontal: 8),
                          child: Text(
                            pharmacy.status!,
                            style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
