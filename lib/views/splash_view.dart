import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:football_app/views/home_view.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(child: Lottie.asset('assets/images/football_animation.json'),),
      nextScreen: HomeView(),
      backgroundColor: Theme.of(context).primaryColor,
      splashIconSize: 300,
      duration: 5000,
    );
  }
}
