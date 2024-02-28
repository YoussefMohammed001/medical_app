import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/helpers/svg.dart';
import 'package:medical_app/core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: AlignmentDirectional.center,
      children: [
        const AppSVG(assetName: 'splash_back_ground',),
        Container(
          foregroundDecoration:  BoxDecoration(
            gradient: LinearGradient(
                colors:[
                Colors.white,

                Colors.white.withOpacity(0.0 )
                ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const[0.14,0.4],
                ),

            ),

            child: Image.asset("assets/images/doc.png")),
        Positioned(
          bottom: 30.h,
          child: Text("Best Doctor\nAppointment App",
            textAlign: TextAlign.center,

            style: TextStyles.font32BlueBold.copyWith(
              height: 1.4
            ),

      ),
        )

      ],

    );
  }


}
