import 'package:aarogya_meds/screens/patients/Auth/signup.dart';
import 'package:aarogya_meds/widget/buttons/login_button.dart';
import 'package:aarogya_meds/widget/textfields/input_text_field.dart';
import 'package:aarogya_meds/widget/textfields/input_pw_field.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class PharmacistsSignin extends StatefulWidget {
  const PharmacistsSignin({super.key});

  @override
  State<PharmacistsSignin> createState() => _AppSigninState();
}

class _AppSigninState extends State<PharmacistsSignin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  bool checked = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: appPagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              const Text("Hi, Welcome Back!", style: appTextHeader1),
              const Text(
                "Hello again, you've been missed!",
                style: appTextSubHeader,
              ),
              const SizedBox(height: 70),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextFormField(
                      controller: _emailController,
                      fieldName: 'Email Address',
                      hintText: 'Enter your email',
                      errormsg: 'Can\'t be empty',
                      inputtype: TextInputType.emailAddress,
                    ),
                    AppPwFormField(
                      controller: _pwController,
                      fieldName: 'Password',
                      hintText: 'Enter your password',
                    ),
                    Padding(
                      padding: appFieldPadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: checked,
                                onChanged: (value) {
                                  setState(() {
                                    checked = value!;
                                  });
                                },
                              ),
                              const Text("Remember Me")
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text("Forgot Password?"))
                        ],
                      ),
                    ),
                    AppPrimaryBtn(
                      btnText: 'Sign In',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.3,
                              endIndent: 20,
                            ),
                          ),
                          Text("Or Login With"),
                          Expanded(
                            child: Divider(
                              thickness: 0.3,
                              indent: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AppSignUp(),
                          ),
                        );
                      },
                      child: const Text("Sign Up"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
