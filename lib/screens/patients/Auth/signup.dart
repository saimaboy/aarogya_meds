// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:aarogya_meds/api_endpoint.dart';
import 'package:aarogya_meds/screens/patients/Auth/signin.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/utils/flutter_toast.dart';
import 'package:aarogya_meds/widget/buttons/login_button.dart';
import 'package:aarogya_meds/widget/textfields/input_pw_field.dart';
import 'package:aarogya_meds/widget/textfields/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class AppSignUp extends StatefulWidget {
  const AppSignUp({super.key});

  @override
  State<AppSignUp> createState() => _AppSignUpState();
}

class _AppSignUpState extends State<AppSignUp> {
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _cpwController = TextEditingController();

  bool checked = false;
  final _formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();

  void datePicker() {
    showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime(1900),
            lastDate: DateTime(2100))
        .then((value) {
      selectedDate = value!;
      setState(() {
      });
    });
  }

  Future<void> registerUser() async {
    final url = ApiConfig.getEndpoint('auth/register');
    final response = await http.post(Uri.parse(url), body: {
      'firstName': _fnameController.text,
      'lastName': _lnameController.text,
      'email': _emailController.text,
      'password': _pwController.text,
    });

    if (response.statusCode == 200) {
      AppToastmsg.appToastMeassage("Registration successful");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AppSignin(),
        ),
      );
    } else {
      final jsonResponse = json.decode(response.body);
      final errorMessage = jsonResponse['message'];
      AppToastmsg.appToastMeassage(errorMessage.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: appPagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text("Create Account", style: appTextHeader1),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextFormField(
                      controller: _fnameController,
                      fieldName: 'First Name',
                      hintText: 'Enter your first name',
                      errormsg: 'Can\'t be empty',
                    ),
                    AppTextFormField(
                      controller: _lnameController,
                      fieldName: 'Last Name',
                      hintText: 'Enter your last name',
                      errormsg: 'Can\'t be empty',
                    ),
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Can\'t be empty';
                        }
                        return null;
                      },
                    ),
                    AppPwFormField(
                      controller: _cpwController,
                      fieldName: 'Confirm Password',
                      hintText: 'Enter your password',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Can\'t be empty';
                        } else if (value != _pwController.text) {
                          return 'Incorrect password';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: appFieldPadding,
                      child: Row(
                        children: [
                          Checkbox(
                            value: checked,
                            onChanged: (value) {
                              setState(() {
                                checked = value!;
                              });
                            },
                          ),
                          const Text("I agree to the terms and conditions")
                        ],
                      ),
                    ),
                    AppPrimaryBtn(
                      btnText: 'Sign Up',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          registerUser();
                        }
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
                          Text("Or Sign Up With"),
                          Expanded(
                            child: Divider(
                              thickness: 0.3,
                              indent: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AppSignin(),
                                ),
                              );
                            },
                            child: const Text("Sign In"),
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
      ),
    );
  }
}
