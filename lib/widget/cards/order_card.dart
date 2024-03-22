// ignore_for_file: must_be_immutable

import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderCard extends StatelessWidget {
  final int orderId;
  final String orderStatus;
  final double cost;
  final double cardHeight;
  final DateTime datetime;
  Function()? more;
  OrderCard({
    super.key,
    required this.orderId,
    required this.orderStatus,
    required this.cost,
    required this.datetime,
    required this.cardHeight,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: size.width * 0.9,
        height: size.width * cardHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order ID $orderId",
                    style: const TextStyle(
                      color: AppColors.textprimary,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    orderStatus,
                    style: TextStyle(
                      color: orderStatus == "Cancelled"
                          ? Colors.red.shade800
                          : orderStatus == "Pending"
                              ? Colors.yellow.shade800
                              : Colors.green.shade800,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: more,
                    child: Row(
                      children: [
                        Text(
                          "View Location",
                          style: TextStyle(
                            color: Colors.red.shade800,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          size: 20,
                          color: Colors.red.shade800,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$cost\$",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    DateFormat("MMM dd yyyy").format(datetime),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.textprimary,
                      fontSize: 13,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
