import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodrecipe/components/Routes/app_route_config.dart';
import 'package:foodrecipe/components/Screens/HomePage/my_home_page.dart';
import 'package:foodrecipe/custom/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: myRouterConfig,
      // routeInformationParser: myRouterConfig.routeInformationParser,
      // routerDelegate: myRouterConfig.routerDelegate,
    );
  }
}



      // home: SplashScreen(
      //   child: Ingredients(),
      // ),
      // home: MyHomePage(),
