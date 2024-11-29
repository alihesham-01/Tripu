import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'choose_city_main/choose_city_tour_guide.dart';
import 'Ui/get_started.dart';
import 'Ui/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: "assets/Logo.png",
        nextScreen:   GetStarted(),
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        splashTransition: SplashTransition.rotationTransition,
      ),
    );
  }
}
