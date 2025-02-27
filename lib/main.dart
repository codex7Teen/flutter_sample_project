import 'package:flutter/material.dart';
import 'package:flutter_sample/web_screen.dart';
import 'package:flutter_sample/mobile_screen.dart';
import 'package:flutter_sample/screen_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter_Sample',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple, // Set your desired color
          foregroundColor: Colors.white, // Set the text/icon color
        ),
      ),
      home: ScreenOne(
        mobileLayout: ScreenMobile(),
        webLayout: ScreenWeb(),
      ),
    );
  }
}
