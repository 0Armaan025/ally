import 'package:ally/features/home/home_screen.dart';
import 'package:ally/features/user_introduction/user_introduction_screen.dart';
import 'package:ally/theme/Pallete.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:ally/features/onboarding/onboarding_screen_1.dart";

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Pallete().backgroundColor,
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.apply(
              //  Set default Text() color;  Use:  apply()
              bodyColor: Pallete().paragraphTextColor,
            ),
      ),
      home: HomeScreen(),
    );
  }
}
