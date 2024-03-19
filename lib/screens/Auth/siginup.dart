import 'package:aarogya_meds/screens/Auth/singin.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/buttons/login_button.dart';
import 'package:aarogya_meds/widget/textfields/input_pw_field.dart';
import 'package:aarogya_meds/widget/textfields/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppSignUp extends StatefulWidget {
  const AppSignUp({super.key});

  @override
  State<AppSignUp> createState() => _AppSignUpState();
}

class _AppSignUpState extends State<AppSignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _cpwController = TextEditingController();
  final TextEditingController _bdayController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
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
        String formatDate = DateFormat('y-MM-dd').format(selectedDate);
        _bdayController.text = formatDate;
      });
    });
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
                      controller: _nameController,
                      fieldName: 'Full Name',
                      hintText: 'Enter your Name',
                      errormsg: 'Can\'t be empty',
                    ),
                    AppTextFormField(
                      controller: _emailController,
                      fieldName: 'Email Address',
                      hintText: 'Enter your email',
                      errormsg: 'Can\'t be empty',
                      inputtype: TextInputType.emailAddress,
                    ),
                    AppTextFormField(
                      controller: _mobileController,
                      fieldName: 'Mobile Number',
                      hintText: 'Enter your number',
                      errormsg: 'Can\'t be empty',
                    ),
                    AppTextFormField(
                      hintText: 'Birthday',
                      controller: _bdayController,
                      readOnly: true,
                      onTap: datePicker,
                      fieldName: 'Birthday',
                    ),
                    AppTextFormField(
                      controller: _weightController,
                      fieldName: 'Weight',
                      hintText: 'Enter your weight',
                      errormsg: 'Can\'t be empty',
                      inputtype: TextInputType.number,
                    ),
                    AppTextFormField(
                      controller: _heightController,
                      fieldName: 'Height',
                      hintText: 'Enter your height',
                      errormsg: 'Can\'t be empty',
                      inputtype: TextInputType.number,
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
