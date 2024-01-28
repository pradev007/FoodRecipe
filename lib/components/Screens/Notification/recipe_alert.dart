import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodrecipe/components/Screens/Notification/notification_main_page.dart';
import 'package:foodrecipe/custom/foodColor.dart';

class RecipeAlert extends StatelessWidget {
  const RecipeAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      minimum: EdgeInsets.only(top: 15.0),
      child: Scaffold(
          // appBar: AppBar(
          //   // bottom: const TabBar(tabs: NotificationTab()),
          //   systemOverlayStyle: SystemUiOverlayStyle.dark,
          //   title: const Text("Notifications"),
          //   centerTitle: true,
          // ),
          body: SingleChildScrollView(
        child: Column(
          children: [
            // first NotificationWidget for yesterday
            // ListView.builder(itemBuilder: (context, int itemCount) {}),
            Text(
              "Today",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: FoodColor.mainHeadingColor,
              ),
            ),
            NotificationWidget(itemCountData: 2, title: 'New Recipe Alert!'),

            // Second NotificationWidget for yesterday
            Text(
              "Yesterday",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: FoodColor.mainHeadingColor,
              ),
            ),
            NotificationWidget(itemCountData: 4, title: 'New Recipe Alert!'),

            // Third NotificationWidget for earlier dates
            Text(
              "Earlier",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: FoodColor.mainHeadingColor,
              ),
            ),
            NotificationWidget(itemCountData: 6, title: 'New Recipe Alert!'),

            // Add more sections with different itemCountData as needed
          ],
        ),
      )),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  final int itemCountData;
  final String title;
  const NotificationWidget({required this.itemCountData, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(15.0),
      scrollDirection: Axis.vertical,
      itemCount: itemCountData,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.antiAlias,
          elevation: 1,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.15,
            // width: double.infinity,
            color: Colors.grey[200],
            child: ListTile(
              title: Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: FoodColor.mainHeadingColor),
              ),
              subtitle: const Text(
                "I am developing a Flutter application and I want to dynamically adjust the height of the ListView. I want the list to have a maximum height of 200",
              ),
              trailing: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: FoodColor.colourStylesSecondaryColourSecondary20,
                  ),
                  child: const Icon(
                    Icons.description_outlined,
                    color: FoodColor.colourStylesSecondaryColourSecondary100,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
