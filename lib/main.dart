import 'package:flutter/material.dart';
import 'package:onboarding/onboarding1/screens/mainscreen.dart';
import 'package:onboarding/onboarding1/screens/onboard/onboard.dart';
import 'package:onboarding/onboarding1/screens/onboard/welcome_page.dart';
import 'package:onboarding/onboarding2/screens/welcome_screen.dart';
import 'package:onboarding/onboarding3/screens/landing_page.dart';
import 'package:onboarding/onboarding4/liquid.dart';
import 'package:onboarding/onboarding5/elastic.dart';
import 'package:onboarding/onboarding6/furniture.dart';
import 'package:onboarding/onboarding7/concentric.dart';
import 'package:onboarding/onboarding8/tea.dart';
import 'package:onboarding/onboarding9/socialmedia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Page1(),
    );
  }
}
