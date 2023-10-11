
import 'package:flutter/material.dart';
import 'package:online_learning/presentation/login/view/login_view.dart';
import 'package:online_learning/presentation/onboarding/view/onboarding.dart';
import 'package:online_learning/presentation/resources/strings_manager.dart';

import '../splash/splash_view.dart';

class Routes{
  static const String splashRoute="/";
  static const String onBoardingRoute="/onBoarding";
  static const String loginRoute='/login';
}
class RouteGenerator{
  static Route<dynamic>getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder:(context)=>const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (context)=>const LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (context)=>const OnBoardingView());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic>unDefinedRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(title:  const Text(StringManager.noRouteFound),)
      ,body:  const Center(child: Text(StringManager.noRouteFound)),
    ));
  }
}

