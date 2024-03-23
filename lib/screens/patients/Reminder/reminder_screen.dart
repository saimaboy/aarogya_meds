import 'package:aarogya_meds/screens/patients/Reminder/add_remider.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbars/back_dots_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Scaffold(
      appBar:  BackDots(title: "REMINDERS",icon: Icons.add,function:(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddReminderScreen()));
        print("object");
      }),
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: size.width*0.04),
        child: Padding(
          padding:  EdgeInsets.only(top:size.height*0.02),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white,
            ),
              child: ListView.separated(
              separatorBuilder: (BuildContext context,int index)=>SizedBox(height: size.height*0.01,),
              itemCount: 2,
              itemBuilder: (BuildContext context,int index){
                     return Container(
                        decoration: BoxDecoration(
                          color: AppColors.primarylite,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColors.primary,width: 1),
                        ),
                        child:Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Row(
                            children: [
                              const Icon(Icons.add_alarm),
                              const SizedBox( width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Medicine Name 1,Medicine Name 2.....",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                                  Text("Selected days:",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
                                  Text("Time:",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
                                  Text("fequency for day:",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
                ),
                );}
                ),
          ),
        ),
      )
    );
  }
}
