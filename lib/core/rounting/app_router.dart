import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/core/rounting/routes.dart';
import 'package:medical_app/features/login/login_screen.dart';
import 'package:medical_app/features/on_boarding/ui/screens/on_boardind_Screen.dart';

class AppRouter{

  Route  generateRoute(RouteSettings settings){

    switch(settings.name){

      case Routes.onBoardingScreen:
        return  MaterialPageRoute(builder:  (context) => OnBoardingScreen(),);

        case Routes.loginScreen:
        return  MaterialPageRoute(builder:  (context) => LoginScreen(),);

      default:
        return MaterialPageRoute(builder: (context) => Scaffold(
          body:  Center(child: Text("No route defined ${settings.name}")),
        ),);

    }

  }

}