import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodrecipe/components/Screens/Notification/notification_followings.dart';
import 'package:foodrecipe/components/Screens/Notification/notification_saved_items.dart';
import 'package:foodrecipe/components/Screens/Notification/recipe_alert.dart';
import 'package:foodrecipe/components/Screens/Profile/Profile_saved.dart';
import 'package:foodrecipe/components/Screens/Profile/profile_recipes.dart';
import 'package:foodrecipe/components/Screens/Profile/profile_video.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> arrProfileTab = [
      'Recipes',
      'Videos',
      'Saved',
    ];
    return DefaultTabController(
      length: arrProfileTab.length,
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 2.0,
          // elevation: 5, // Remove elevation
          systemOverlayStyle: SystemUiOverlayStyle.light,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            tabs: arrProfileTab.map((String tabLabel) {
              return Tab(
                text: tabLabel,
              );
            }).toList(),
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            // add actual data to display under each tab
            // import the file to display
            ProfileRecipes(),
            ProfileVideos(),
            ProfileSaved(),
          ],
        ),
      ),
    );
  }
}
