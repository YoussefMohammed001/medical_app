import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/core/helpers/navigators.dart';
import 'package:medical_app/core/rounting/routes.dart';

import '../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an account?",
                style: TextStyles.font13DarkBlueRegular,
              ),
              TextSpan(
                text: ' Sign Up',
                style: TextStyles.font13BlueSemiBold,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(Routes.signUpScreen);
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}