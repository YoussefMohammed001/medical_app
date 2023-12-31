import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/theming/styles.dart';
import 'package:medical_app/features/on_boarding/ui/widgets/doc_logo_and_name.dart';
import 'package:medical_app/features/on_boarding/ui/widgets/doctor_text_and_image.dart';
import 'package:medical_app/features/on_boarding/ui/widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
           // left: 30.h,
            //right: 30.h
          ),
          child:  Column(
            children: [
              DocLogoAndName(),
              SizedBox(height: 30.h,),
              DoctorImageAndText(),
              Column(
                children: [
                  Text(

                    "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                    textAlign:  TextAlign.center,
                    style: TextStyles.font13Grey,
                  )
                ],
              ),
              SizedBox(height: 30.h,),
              GetStartedButton()

            ],
          ),
        ),
        ),

    );
  }
}
