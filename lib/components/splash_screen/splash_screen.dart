import 'package:flutter/material.dart';
import 'package:foodrecipe/custom/foodColor.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({super.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => widget.child!), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FoodColor.colourStylesNeutralColourGray4,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Recipe',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green[200]),
            ),
            Image.asset('assets/splash1.gif')
          ],
        ),
      ),
    );
  }
}
