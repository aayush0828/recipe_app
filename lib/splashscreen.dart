import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe_app/homescreen/homescreen.dart';

class SplashScreen extends StatelessWidget { 
  const SplashScreen({Key? key}): super(key: key); 
  @override
Widget build(BuildContext context) {
return AnimatedSplashScreen( 
  splash: Lottie.asset('recipe_app/animations/1.json'),
  
  splashIconSize: 250,
  backgroundColor: Colors.white,
  nextScreen: HomeScreen());}}