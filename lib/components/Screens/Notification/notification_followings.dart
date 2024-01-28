import 'package:flutter/material.dart';
import 'package:foodrecipe/components/Screens/Notification/recipe_alert.dart';
import 'package:foodrecipe/custom/foodColor.dart';

class NotificationFollowings extends StatefulWidget {
  const NotificationFollowings({super.key});

  @override
  State<NotificationFollowings> createState() => _NotificationFollowingsState();
}

class _NotificationFollowingsState extends State<NotificationFollowings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                // tileColor: FoodColor.colourStylesSecondaryColourSecondary20,
                title: const Text(
                  'Pradip Devkota',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                subtitle: const Text(
                  'pradipdevkota007@gmail.com',
                  style: TextStyle(fontSize: 12),
                ),
                // ignore: sized_box_for_whitespace
                leading: CircleAvatar(
                  radius: 20.0,
                  child: Image.asset('assets/dev.jpg'),
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: const Text("UnFollow"),
                ),
              );
            },
          )),
    );
  }
}
