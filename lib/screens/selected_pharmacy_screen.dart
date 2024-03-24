import 'dart:io';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbars/menu_notification_appbar.dart';
import 'package:aarogya_meds/widget/buttons/button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectedPharmacyScreen extends StatefulWidget {
  const SelectedPharmacyScreen({super.key});

  @override
  State<SelectedPharmacyScreen> createState() => _SelectedPharmacyScreenState();
}

class _SelectedPharmacyScreenState extends State<SelectedPharmacyScreen> {
  final ImagePicker picker = ImagePicker();
  List<File> files = <File>[];

  Future<void> imgFromGallery() async {
    //Navigator.pop(context);
    final selectedFile = await picker.pickImage(source: ImageSource.gallery);
    if (selectedFile != null) {
      setState(() {
        files = [File(selectedFile.path)];
      });
    }
  }

  int star = 3;
  @override
  Widget build(BuildContext context) {
    String pharmecyName = "ABC Pharmecy";
    String rating = "4.5";
    String location = "location";
    String openTime = "8.00 am";
    Color iconColor = AppColors.white;
    Color backgoundColor = AppColors.primary;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: MenuNotification(title: pharmecyName),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: [
                  Row(children: [
                    Text(
                      rating,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    ),
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const Icon(Icons.star_half_outlined,
                        color: Colors.amber, size: 18),
                  ]),
                  const Text(
                    "(3500)",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.008,
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "Time To Travel",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                  ),
                  const Icon(Icons.time_to_leave),
                  const Expanded(
                      flex: 2,
                      child: Text(
                        "22 min",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      )),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("lib/assets/images/pharmacy_2.jpeg"),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              //Image.asset("lib/assets/images/pharmacy_2.jpeg",height: size.height*0.5,),

              Padding(
                padding: EdgeInsets.only(top: size.height * 0.02),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: backgoundColor,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.02),
                                child: Center(
                                  child: Icon(Icons.directions_rounded,
                                      color: iconColor),
                                ),
                              ),
                            ),
                            const Text("Directions",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.02),
                                child: const Center(
                                  child:
                                      Icon(Icons.call, color: AppColors.white),
                                ),
                              ),
                            ),
                            const Text("Call",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.02),
                                child: const Center(
                                  child: Icon(Icons.bookmark_border_outlined,
                                      color: AppColors.white),
                                ),
                              ),
                            ),
                            const Text("Save",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.02),
                                child: const Center(
                                  child:
                                      Icon(Icons.share, color: AppColors.white),
                                ),
                              ),
                            ),
                            const Text("Share",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.8,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: [
                  const Icon(Icons.location_pin),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      location,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.8,
              ),
              Row(
                children: [
                  const Icon(Icons.access_time_outlined),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("open at $openTime ",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.8,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ButtonPrimary(
                  function: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Upload your Prescription",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                        backgroundColor: AppColors.primarylite,
                        surfaceTintColor: AppColors.primarylite,
                        content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // ElevatedButton(
                              //   onPressed: imgFromGallery,
                              //   child: const Text('Open Gallery'),
                              // ),
                              if (files.isNotEmpty)
                                Image.file(
                                  files.first,
                                  height: 200,
                                ),
                              ElevatedButton(
                                onPressed: imgFromGallery,
                                child: const Text('Select Image'),
                              ),
                            ]),
                      ),
                    );
                  },
                  buttonText: "Send Prescription"),
              SizedBox(
                height: size.height * 0.04,
              ),
            ],
          ),
        ));
  }
}
