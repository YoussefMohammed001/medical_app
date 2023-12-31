import 'package:flutter/material.dart';
import 'package:medical_app/core/rounting/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/rounting/routes.dart';
import 'package:medical_app/core/theming/colors.dart';
class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override

  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
minTextAdapt: true,
child: MaterialApp(
 title:  "doc app",
onGenerateRoute: appRouter.generateRoute,
  theme:  ThemeData(
primaryColor:  AppColors.primaryColor,
    scaffoldBackgroundColor:  Colors.white,
  ),
  debugShowCheckedModeBanner: false,
initialRoute:  Routes.onBoardingScreen,
  onUnknownRoute: appRouter.generateRoute,
),

    );
  }
}
