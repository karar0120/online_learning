import 'dart:async';

import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/constants_manager.dart';
import '../resources/image_manager.dart';
import '../resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDaley() {
    _timer =
        Timer(const Duration(seconds: ConstantsManager.splashView), _geNext);
  }

  _geNext() {
      Navigator.pushReplacementNamed(
          context, Routes.onBoardingRoute);
    }

  @override
  void initState() {
    super.initState();
    _startDaley();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
        child: Image.asset(ImageManager.splashScreen),
      ),
    );
  }

  @override
  void dispose() {
    _timer;
    super.dispose();
  }
}
