import 'package:flutter/material.dart';

class CardMed extends StatelessWidget {
  const CardMed({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.width * 0.04),
      child: Container(
        width: size.width * 0.9,
        height: size.width * 0.28,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.01),
                  child: const Text(
                    "08.00 AM",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.01),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          "Lisinopril",
                          style: TextStyle(
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "ACE inhibitor",
                          style: TextStyle(
                            fontSize: 10,
                            backgroundColor: Color.fromARGB(255, 196, 196, 196),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.01),
                  child: const Text(
                    "2 Pill",
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
