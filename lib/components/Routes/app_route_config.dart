import 'package:flutter/material.dart';
import 'package:foodrecipe/components/Routes/app_route_const.dart';
import 'package:foodrecipe/components/Screens/ErrorPage/error_page.dart';
import 'package:foodrecipe/components/Screens/Favourite/fav_page.dart';
import 'package:foodrecipe/components/Screens/HomePage/firstPage.dart';
import 'package:foodrecipe/components/Screens/HomePage/my_home_page.dart';
import 'package:foodrecipe/components/Screens/Notification/notification_main_page.dart';
import 'package:foodrecipe/components/Screens/Profile/my_profile_page.dart';
import 'package:foodrecipe/main.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final myRouterConfig = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: 'homePage',
    builder: (context, state) {
      return MyHomePage();
    },
  ),
  GoRoute(
    path: '/favPage',
    name: 'favPage',
    builder: (context, state) {
      return FavPage();
    },
  ),
  GoRoute(
    path: '/notificationPage',
    name: 'notificationPage',
    builder: (context, state) {
      return NotificationMainPage();
    },
  )
]);
