import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/helpers/svg.dart';
import 'package:medical_app/core/theming/styles.dart';


class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AppSVG(assetName: "logo"),
        SizedBox(width: 10.w,),
        Text("DocDoc",style: TextStyles.font24BlackBold,)
      ],
    );
  }
}
