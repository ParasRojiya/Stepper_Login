import 'package:flutter/material.dart';
import 'package:stepper_example/screens/home_page.dart';
import 'package:stepper_example/screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.redAccent,
        ),
      ),
      home: const HomePage(),
      initialRoute: 'splashscreen',
      routes: {
        'splashscreen': (context) => const SplashScreen(),
        'homepage': (context) => const HomePage(),
      },
    ),
  );
}
