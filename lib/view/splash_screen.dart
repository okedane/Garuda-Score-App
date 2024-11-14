import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:live_score/view/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.red[900],
        childWidget: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset("assets/images/logo.png"),
        ),
        nextScreen: const HomeScreen(),
      ),
    );
  }
}
