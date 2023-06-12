import 'dart:async' show Timer;

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:do_bem_front/src/modules/splashscreen/presenter/splash_screen_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ModularState<SplashScreen, SplashScreenBloc> {


  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), controller.verifyAuth);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 202, 10, 1),
      body: Center(
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Image.asset('assets/images/splashScreen_image.png')
        ),
      ),
    );
  }
}
