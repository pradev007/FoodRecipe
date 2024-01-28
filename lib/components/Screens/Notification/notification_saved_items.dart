import 'package:flutter/material.dart';
import 'package:foodrecipe/components/Screens/Notification/recipe_alert.dart';

class NotificationSavedItems extends StatefulWidget {
  const NotificationSavedItems({super.key});

  @override
  State<NotificationSavedItems> createState() => _NotificationSavedItemsState();
}

class _NotificationSavedItemsState extends State<NotificationSavedItems> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: NotificationWidget(itemCountData: 7, title: "Saved"));
  }
}
