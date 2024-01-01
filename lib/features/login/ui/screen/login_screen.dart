import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/helpers/spacing.dart';
import 'package:medical_app/core/theming/styles.dart';
import 'package:medical_app/core/widgets/app_text_button.dart';
import 'package:medical_app/features/login/data/models/login_request_body.dart';
import 'package:medical_app/features/login/logic/login_cubit.dart';
import 'package:medical_app/features/login/ui/widgets/already_have_account.dart';
import 'package:medical_app/features/login/ui/widgets/email_and_password.dart';
import 'package:medical_app/features/login/ui/widgets/login_listener.dart';
import 'package:medical_app/features/login/ui/widgets/terms_and_conditions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
            vertical: 30.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpacing(8),
                Text(
                  "We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpacing(40),
                Column(
                  children: [
                    const EmailAndPassword(),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpacing(40),
                    AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          validateThenDoLogin(context);
                        })
                  ],
                ),
                verticalSpacing(16),
                const TermsAndConditionsText(),
                verticalSpacing(60),
                const AlreadyHaveAccountText(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginStates(loginRequestBody:  LoginRequestBody(
      email: context.read<LoginCubit>().emailEditingController.text,
      pass: context.read<LoginCubit>().passEditingController.text,
    ),
    );


  }
}