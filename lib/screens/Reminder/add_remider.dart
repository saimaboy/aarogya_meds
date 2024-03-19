
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddReminderScreen extends StatefulWidget {
  const AddReminderScreen({super.key});

  @override
  State<AddReminderScreen> createState() => _AddReminderScreenState();
}

class _AddReminderScreenState extends State<AddReminderScreen> {
  final TextEditingController closedTimeController =TextEditingController();
  bool sundayRadio=false;
  bool mondayRadio=false;
  bool tuesdayRadio=false;
  bool wednesdayRadio=false;
  bool thursdayRadio=false;
  bool fridayRadio=false;
  bool saturdayRadio=false;
  bool oneTimeRadio=false;
  bool twoTimeRadio=false;
  bool threeTimeRadio=false;
  String? selectedvalue="am";
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:015),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.2),
              child: const Text(
                "Add Reminder",
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),
              ),
            ),
             SizedBox(height: size.height*0.01,),
            Text(
              "Select Day",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Checkbox(
                        value: sundayRadio,
                        onChanged: (value){
                        setState(() {
                          sundayRadio=value!;
                        });

                      },
                      activeColor:AppColors.primary,
                        //checkColor:Colors.red ,
                      shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: const BorderSide(
                              color: AppColors.primary,
                            ),
                      ),
                        side: const BorderSide(
                            color: AppColors.primary,
                            width: 2
                        ),
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
                        onChanged: (value){
                          setState(() {
                            mondayRadio=value!;
                          });

                        },
                        activeColor:AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary,
                            width: 2
                        ),
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
                        onChanged: (value){
                          setState(() {
                            tuesdayRadio=value!;
                          });

                        },
                        activeColor:AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary,
                            width: 2
                        ),
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
                        onChanged: (value){
                          setState(() {
                            wednesdayRadio=value!;
                          });

                        },
                        activeColor:AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary,
                            width: 2
                        ),
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
                        onChanged: (value){
                          setState(() {
                            thursdayRadio=value!;
                          });

                        },
                        activeColor:AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color:AppColors.primary,
                            width: 2
                        ),
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
                        onChanged: (value){
                          setState(() {
                            fridayRadio=value!;
                          });

                        },
                        activeColor:AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary,
                            width: 2
                        ),
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
                        onChanged: (value){
                          setState(() {
                            saturdayRadio=value!;
                          });

                        },
                        activeColor:AppColors.primary,
                        //checkColor:Colors.red ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                        ),
                        side: const BorderSide(
                            color: AppColors.primary,
                            width: 2
                        ),
                        visualDensity: VisualDensity.compact,
                      ),
                      const Text("sat"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height*0.05,),
            Text("Set a Time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            Text("Active the Field using check box",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: closedTimeController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color:AppColors.textprimary),
                      enabled: oneTimeRadio,
                      border: InputBorder.none,
                      label: const Text("Enter Time",style: TextStyle(fontSize: 15),),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),
                Expanded(
                  child: IgnorePointer(
                    ignoring: !oneTimeRadio,
                    child: DropdownButtonFormField(
                        value:selectedvalue,
                        items: <String>["am", "pm"].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: const TextStyle(color: AppColors.textprimary,fontSize: 15),),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedvalue=value;
                          });
                        },
                        icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 24,),
                        style: const TextStyle(fontSize: 16),
                        decoration:  InputDecoration(
                          enabled: oneTimeRadio,
                          border: InputBorder.none,
                          //labelText: "Select ",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: Colors.transparent,
                          filled: true,
                          labelStyle: const TextStyle(color: AppColors.textprimary,fontSize: 16,fontWeight: FontWeight.w700),
                        )
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
                          onChanged: (value){
                            setState(() {
                              oneTimeRadio=value!;
                            });
                          },
                          activeColor:AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: const BorderSide(
                              color: AppColors.primary,
                            ),
                          ),
                          side: const BorderSide(
                              color: AppColors.primary,
                              width: 2
                          ),
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
                    controller: closedTimeController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color:AppColors.textprimary),
                      enabled: twoTimeRadio,
                      border: InputBorder.none,
                      label: const Text("Enter Time",style: TextStyle(fontSize: 15),),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),
                Expanded(
                  child: IgnorePointer(
                    ignoring: !twoTimeRadio,
                    child: DropdownButtonFormField(
                        value:selectedvalue,
                        items: <String>["am", "pm"].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: const TextStyle(color: AppColors.textprimary,fontSize: 15),),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedvalue=value;
                          });
                        },
                        icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 24,),
                        style: const TextStyle(fontSize: 16),
                        decoration:  InputDecoration(
                          enabled: twoTimeRadio,
                          border: InputBorder.none,
                          //labelText: "Select ",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: Colors.transparent,
                          filled: true,
                          labelStyle: TextStyle(color: AppColors.textprimary,fontSize: 16,fontWeight: FontWeight.w700),
                        )
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
                          onChanged: (value){
                            setState(() {
                              twoTimeRadio=value!;
                            });
                          },
                          activeColor:AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: const BorderSide(
                              color: AppColors.primary,
                            ),
                          ),
                          side: const BorderSide(
                              color: AppColors.primary,
                              width: 2
                          ),
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
                    controller: closedTimeController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color:AppColors.textprimary),
                      enabled: threeTimeRadio,
                      border: InputBorder.none,
                      label: const Text("Enter Time",style: TextStyle(fontSize: 15),),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),
                Expanded(
                  child: IgnorePointer(
                    ignoring: !threeTimeRadio,
                    child: DropdownButtonFormField(
                        value:selectedvalue,
                        items: <String>["am", "pm"].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: const TextStyle(color: AppColors.textprimary,fontSize: 15),),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedvalue=value;
                          });
                        },
                        icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 24,),
                        style: const TextStyle(fontSize: 16),
                        decoration:  InputDecoration(
                          enabled: threeTimeRadio,
                          border: InputBorder.none,
                          //labelText: "Select ",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: Colors.transparent,
                          filled: true,
                          labelStyle: const TextStyle(color: AppColors.textprimary,fontSize: 16,fontWeight: FontWeight.w700),
                        )
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
                      onChanged: (value){
                        setState(() {
                          threeTimeRadio=value!;
                        });
                      },
                      activeColor:AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: const BorderSide(
                          color: AppColors.primary,
                        ),
                      ),
                      side: const BorderSide(
                          color: AppColors.primary,
                          width: 2
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                  ],
                ))
              ],
            ),
            SizedBox(height: size.height*0.08,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(AppColors.primarylite),
                      foregroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(vertical: 10,horizontal: 20)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      elevation: MaterialStateProperty.all<double>(5),
                    ),
                    onPressed: (){},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical:10),
                      child: Text("Add Reminder"),
                    ),
                  ),
                  SizedBox(width: size.width*0.04,),
                  ElevatedButton(
                    style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.all<Color>(AppColors.primarylite),
                      foregroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(vertical: 10,horizontal: 37)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      elevation: MaterialStateProperty.all<double>(5),
                    ),
                    onPressed: (){},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical:10),
                      child: Text("Cancel"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height*0.03,),

          ],
        ),
      ),
    );
  }
}
