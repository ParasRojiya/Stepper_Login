import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Duration duration = const Duration(seconds: 3);
    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('homepage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FlutterLogo(size: 250),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Stepper App",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(height: 30),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
