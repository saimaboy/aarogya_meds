import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbars/back_dots_appbar.dart';
import 'package:aarogya_meds/widget/cards/order_card.dart';
import 'package:flutter/material.dart';

class PrescriptionOrder extends StatelessWidget {
  const PrescriptionOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackDots(title: "My Prescription"),
      body: Padding(
        padding: appPagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Active Orders',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textprimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            OrderCard(
              orderId: 43535,
              orderStatus: "Order Accepted",
              cost: 254,
              datetime: DateTime.parse("2023-10-23"),
              cardHeight: 0.28,
            ),
            OrderCard(
              orderId: 43535,
              orderStatus: "Pending",
              cost: 254,
              datetime: DateTime.parse("2023-10-23"),
              cardHeight: 0.28,
            ),
            const SizedBox(height: 15),
            const Text(
              'Past Orders',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textprimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            OrderCard(
              orderId: 43535,
              orderStatus: "Cancelled",
              cost: 254,
              datetime: DateTime.parse("2023-10-23"),
              cardHeight: 0.25,
            ),
          ],
        ),
      ),
    );
  }
}
