import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbars/back_dots_appbar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddReminderScreen extends StatefulWidget {
  const AddReminderScreen({super.key});

  @override
  State<AddReminderScreen> createState() => _AddReminderScreenState();
}

class _AddReminderScreenState extends State<AddReminderScreen> {
  final TextEditingController oneTimeController = TextEditingController();
  final TextEditingController twoTimeController = TextEditingController();
  final TextEditingController threeTimeController = TextEditingController();

  bool sundayRadio = false;
  bool mondayRadio = false;
  bool tuesdayRadio = false;
  bool wednesdayRadio = false;
  bool thursdayRadio = false;
  bool fridayRadio = false;
  bool saturdayRadio = false;

  bool oneTimeRadio = false;
  bool twoTimeRadio = false;
  bool threeTimeRadio = false;
  bool statusRadio = false;

  final List<String> items = [
    'Important',
    'Before Foods',
    'After Foods',
  ];

  String? selectedValue;

  int clickCount=0;
  List<Widget> textFields = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const BackDots(title: "ADD REMINDER"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 015),
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            const Text(
              "Select Day",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Checkbox(
                        value: sundayRadio,
                        onChanged: (value) {
                          setState(() {
                            sundayRadio = value!;
                          });
                        },
                        activeColor: AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary, width: 2),
                        visualDensity: VisualDensity.compact,
                      ),
                      const Text("Sun"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Checkbox(
                        value: mondayRadio,
                        onChanged: (value) {
                          setState(() {
                            mondayRadio = value!;
                          });
                        },
                        activeColor: AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary, width: 2),
                        visualDensity: VisualDensity.compact,
                      ),
                      const Text("Mon"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Checkbox(
                        value: tuesdayRadio,
                        onChanged: (value) {
                          setState(() {
                            tuesdayRadio = value!;
                          });
                        },
                        activeColor: AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary, width: 2),
                        visualDensity: VisualDensity.compact,
                      ),
                      const Text("tue"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Checkbox(
                        value: wednesdayRadio,
                        onChanged: (value) {
                          setState(() {
                            wednesdayRadio = value!;
                          });
                        },
                        activeColor: AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary, width: 2),
                        visualDensity: VisualDensity.compact,
                      ),
                      const Text("Wed"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Checkbox(
                        value: thursdayRadio,
                        onChanged: (value) {
                          setState(() {
                            thursdayRadio = value!;
                          });
                        },
                        activeColor: AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary, width: 2),
                        visualDensity: VisualDensity.compact,
                      ),
                      const Text("thu"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Checkbox(
                        value: fridayRadio,
                        onChanged: (value) {
                          setState(() {
                            fridayRadio = value!;
                          });
                        },
                        activeColor: AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary, width: 2),
                        visualDensity: VisualDensity.compact,
                      ),
                      const Text("fri"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Checkbox(
                        value: saturdayRadio,
                        onChanged: (value) {
                          setState(() {
                            saturdayRadio = value!;
                          });
                        },
                        activeColor: AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary, width: 2),
                        visualDensity: VisualDensity.compact,
                      ),
                      const Text("sat"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            const Text(
              "Set a Time",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const Text(
              "Active the Field using check box",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: oneTimeController,
                    maxLines: 1,
                    readOnly: true,
                    keyboardType: TextInputType.datetime,
                    onTap: () async {
                      final TimeOfDay? pickedTime = await showTimePicker(
                          context: context, initialTime: TimeOfDay.now());
                      if (pickedTime != null) {
                        setState(() {
                          oneTimeController.text = pickedTime.format(context);
                        });
                      }
                    },
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: AppColors.textprimary),
                      enabled: oneTimeRadio,
                      border: InputBorder.none,
                      label: const Text(
                        "Enter Time",
                        style: TextStyle(fontSize: 15),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: oneTimeRadio,
                      onChanged: (value) {
                        setState(() {
                          oneTimeRadio = value!;
                        });
                      },
                      activeColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: const BorderSide(
                          color: AppColors.primary,
                        ),
                      ),
                      side:
                          const BorderSide(color: AppColors.primary, width: 2),
                      visualDensity: VisualDensity.compact,
                    ),
                  ],
                ))
              ],
            ),
            //SizedBox(height: size.height*0.01,),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: twoTimeController,
                    readOnly: true,
                    maxLines: 1,
                    keyboardType: TextInputType.datetime,
                    onTap: () async {
                      final TimeOfDay? pickedTime = await showTimePicker(
                          context: context, initialTime: TimeOfDay.now());
                      if (pickedTime != null) {
                        setState(() {
                          twoTimeController.text = pickedTime.format(context);
                        });
                      }
                    },
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: AppColors.textprimary),
                      enabled: twoTimeRadio,
                      border: InputBorder.none,
                      label: const Text(
                        "Enter Time",
                        style: TextStyle(fontSize: 15),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: twoTimeRadio,
                      onChanged: (value) {
                        setState(() {
                          twoTimeRadio = value!;
                        });
                      },
                      activeColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: const BorderSide(
                          color: AppColors.primary,
                        ),
                      ),
                      side:
                          const BorderSide(color: AppColors.primary, width: 2),
                      visualDensity: VisualDensity.compact,
                    ),
                  ],
                ))
              ],
            ),
            //SizedBox(height: size.height*0.01,),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: threeTimeController,
                    maxLines: 1,
                    readOnly: true,
                    keyboardType: TextInputType.datetime,
                    onTap: () async {
                      final TimeOfDay? pickedTime = await showTimePicker(
                          context: context, initialTime: TimeOfDay.now());
                      if (pickedTime != null) {
                        setState(() {
                          threeTimeController.text = pickedTime.format(context);
                        });
                      }
                    },
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: AppColors.textprimary),
                      enabled: threeTimeRadio,
                      border: InputBorder.none,
                      label: const Text(
                        "Enter Time",
                        style: TextStyle(fontSize: 15),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: threeTimeRadio,
                      onChanged: (value) {
                        setState(() {
                          threeTimeRadio = value!;
                        });
                      },
                      activeColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: const BorderSide(
                          color: AppColors.primary,
                        ),
                      ),
                      side:
                          const BorderSide(color: AppColors.primary, width: 2),
                      visualDensity: VisualDensity.compact,
                    ),
                  ],
                ))
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Text(
              "Status",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Select Item',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textprimary,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textprimary,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                buttonStyleData: ButtonStyleData(
                  height: 50,
                  width: 160,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: AppColors.white,
                  ),
                  elevation: 0,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                  ),
                  iconSize: 25,
                  iconEnabledColor: AppColors.primary,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.white,
                  ),
                  offset: const Offset(0, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all<double>(6),
                    thumbVisibility: MaterialStateProperty.all<bool>(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Expanded(child: Text("Medicine",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)),

                    InkWell(
                      onTap: (){
                        setState(() {
                          clickCount++;
                          textFields.add(TextField(
                            decoration: InputDecoration(
                                labelText: 'For $clickCount Medicine',
                                suffixIcon: InkWell(
                                    onTap:(){
                                      print("Remove");
                                      setState(()
                                      {
                                        clickCount--;
                                        textFields.removeLast();
                                      });
                                      },
                                    child: Icon(Icons.remove_circle_outline,color: Colors.red,))),
                          )
                        );}
                      );},
                        child: const Icon(Icons.add)),
                  ],
                ),
                const Divider(thickness: 1,),
                Column(
                  children:textFields,
                )
              ],
            ),

            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape:
                        RoundedRectangleBorder(borderRadius: appBorderRadius),
                        ),
                  onPressed: () {},
                  child: const Center(
                  child: Text(
                      "Add Reminder",
                      style: TextStyle(
                      color: AppColors.white,
                      ),
                  ),),
                  ),
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  SizedBox(width: size.width*0.04,),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Colors.white,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: appBorderRadius),
                        side: const BorderSide(color: AppColors.primarylite,width: 2),
                      ),
                      onPressed: () {},
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
