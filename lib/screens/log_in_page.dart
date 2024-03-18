import 'package:aarogya_meds/screens/sing_in_page.dart';
import 'package:aarogya_meds/widget/buttons/button.dart';
import 'package:aarogya_meds/widget/textfield_without_hint.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(top: size.width * 0.1),
                child: Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        fontSize: size.width * 0.07,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: size.width * 0.035,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextFieldWithoutHintText(
                  obsecureText: false,
                ),
                SizedBox(height: size.width * 0.01),
                Text("Password",
                    style: TextStyle(
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.w500,
                    )),
                TextFieldWithoutHintText(
                  obsecureText: true,
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.6),
                  child: const Text("Forget password?",
                      style: TextStyle(decoration: TextDecoration.underline)),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: size.width * 0.13),
              child: ButtonPrimary(
                function: () {},
                buttonText: "Continue",
                color: Colors.orange,
              ),
            ),
            // const Expanded(
            //   flex: 1,
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Divider(color: Colors.black12, thickness: 3),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.symmetric(horizontal: 10),
            //         child: Text(
            //           "OR",
            //         ),
            //       ),
            //       Expanded(
            //         child: Divider(color: Colors.black12, thickness: 3),
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  // Padding(
                  //   padding: EdgeInsets.only(top: size.width * 0.02),
                  //   child: ButtonWithLogo(
                  //       function: () {},
                  //       buttonText: "Continue With gmail",
                  //       icon: const Icon(Icons.mail)),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(top: size.width * 0.02),
                  //   child: ButtonWithLogo(
                  //       function: () {},
                  //       buttonText: "Continue With Apple",
                  //       icon: const Icon(Icons.apple)),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(top: size.width * 0.02),
                  //   child: ButtonWithLogo(
                  //     function: () {},
                  //     buttonText: "Continue With Facebook",
                  //     icon: const Icon(
                  //       Icons.facebook,
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: size.width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Are you new?",
                        ),
                        GestureDetector(
                          child: const Text(
                            "Create an Account",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            );
                          },
                        )
                      ],
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
