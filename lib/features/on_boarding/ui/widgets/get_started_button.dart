import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/helpers/navigators.dart';
import 'package:medical_app/core/rounting/routes.dart';
import 'package:medical_app/core/theming/colors.dart';
import 'package:medical_app/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      child: ElevatedButton(

          onPressed: (){
            context.pushNamed(Routes.loginScreen);
      },
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(16)
)
            ),
            backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50))
          ),
          child:  Text("Get Started",
style: TextStyles.font16WhiteSemiBold,



      )),
    );
  }
}
