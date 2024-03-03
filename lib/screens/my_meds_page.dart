import 'package:aarogya_meds/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyMedsPage extends StatelessWidget {
  const MyMedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: size.width * 0.25),
                child: Text(
                  "My Meds",
                  style: TextStyle(
                      fontSize: size.width * 0.05, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          "All prescriptions",
                          style: TextStyle(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      GestureDetector(
                        child: const Text(
                          "Add New",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 4, 77, 136),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          CardMed(),
                          CardMed(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
