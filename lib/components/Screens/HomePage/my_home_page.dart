import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodrecipe/components/my_nav_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      bottomNavigationBar: MyNavBar(),
    );
  }
}
