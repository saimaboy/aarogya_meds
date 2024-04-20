// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:aarogya_meds/api_endpoint.dart';
import 'package:aarogya_meds/screens/patients/Auth/signup.dart';
import 'package:aarogya_meds/screens/patients/wrapper.dart';
import 'package:aarogya_meds/utils/flutter_toast.dart';
import 'package:aarogya_meds/widget/buttons/login_button.dart';
import 'package:aarogya_meds/widget/textfields/input_text_field.dart';
import 'package:aarogya_meds/widget/textfields/input_pw_field.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AppSignin extends StatefulWidget {
  const AppSignin({super.key});

  @override
  State<AppSignin> createState() => _AppSigninState();
}

class _AppSigninState extends State<AppSignin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  bool checked = false;
  final _formKey = GlobalKey<FormState>();
  final storage = FlutterSecureStorage();

  Future<void> loginUser(BuildContext context) async {
    final url = ApiConfig.getEndpoint('auth/login');
    final response = await http.post(Uri.parse(url), body: {
      'email': _emailController.text,
      'password': _pwController.text,
    });

    if (response.statusCode == 201) {
      final jsonToken = json.decode(response.body);
      final token = jsonToken['access_token'];

      await storage.write(key: 'api_token', value: token ?? '');
      AppToastmsg.appToastMeassage("Login successful");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Wrapper(),
        ),
      );
    } else {
      final jsonResponse = json.decode(response.body);
      final errorMessage = jsonResponse['message'];
      AppToastmsg.appToastMeassage(errorMessage);
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
                        if (_formKey.currentState!.validate()) {
                          loginUser(context);
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
