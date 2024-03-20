import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbars/back_dots_appbar.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackDots(title: "Profile Edit"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyColumn(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Save button action
                    },
                    style: ElevatedButton.styleFrom(
                        // Change save button color
                        backgroundColor: AppColors.primary),
                    child: const Text(
                      'Save',
                      style: TextStyle(color: AppColors.textprimary),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Cancel button action
                    },
                    style: ElevatedButton.styleFrom(
                        // Change cancel button color
                        backgroundColor: AppColors.primary),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: AppColors.textprimary),
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

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyTextField(label: 'Name'),
        MyTextField(label: 'Email'),
        MyTextField(label: 'Mobile'),
        MyTextField(label: 'Address'),
        MyTextField(label: 'Date of Birth'),
        MyTextField(label: 'Gender'),
        MyTextField(label: 'Weight'),
        MyTextField(label: 'Height'),
        MyTextField(label: 'Blood Type'),
      ],
    );
  }
}

class MyTextField extends StatelessWidget {
  final String label;

  const MyTextField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: TextField(
          decoration: InputDecoration(
            labelText: label,
            border: const OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
