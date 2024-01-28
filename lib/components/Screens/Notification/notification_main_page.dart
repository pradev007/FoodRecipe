import 'package:flutter/material.dart';
import 'package:foodrecipe/components/Screens/Notification/recipe_alert.dart';
import 'package:foodrecipe/components/Screens/Notification/notification_followings.dart';
import 'package:foodrecipe/components/Screens/Notification/notification_saved_items.dart';
import 'package:foodrecipe/custom/foodColor.dart';

class NotificationMainPage extends StatefulWidget {
  const NotificationMainPage({super.key});

  @override
  State<NotificationMainPage> createState() => _NotificationMainPage();
}

class _NotificationMainPage extends State<NotificationMainPage> {
  late TabController _tabController;
  int currentNotiIndex = 0;
  int selectedNotiIndex = 0;

  // final List<String> arrNotificationTab = [
  //   "Recipe Alert",
  //   "Saved Items",
  //   "Following",
  // ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              indicatorWeight: 5.0,
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontSize: 14, color: FoodColor.colourStylesNeutralColourGray3),
              labelColor: FoodColor.colourStylesPrimaryColourPrimary100,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: FoodColor.colourStylesSecondaryColourSecondary60,
              tabs: [
                Text("Recipe Alert"),
                Text("Saved Items"),
                Text("Followings"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              RecipeAlert(),
              NotificationSavedItems(),
              NotificationFollowings(),
            ],
          ),
        ),
      ),
    );
  }
}
