import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pandemiki/screens/splash_screen.dart';
import 'screens/home_page.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setEnabledSystemUIOverlays([]);
}