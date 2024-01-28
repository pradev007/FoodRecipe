import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodrecipe/components/Screens/Favourite/fav_page.dart';
import 'package:foodrecipe/components/Screens/Profile/profile_tab.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: kTextTabBarHeight * 0.5,
          actions: const [
            Icon(
              Icons.more_horiz_rounded,
              size: 24,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main row for displaying Profile pic, user name, recipe, followers & following
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Column for displaying Profile pic, user name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Profile picture
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dev.jpg'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20.0),

                          // User data columns
                          Row(
                            children: [
                              // Shows total recipes number
                              UserDataColumn(headText: 'Recipe', subText: '49'),
                              SizedBox(width: 16), // Add some spacing between columns
                              // Shows total followers number
                              UserDataColumn(headText: 'Followers', subText: '69'),
                              SizedBox(width: 16), // Add some spacing between columns
                              // Show total following number
                              UserDataColumn(headText: 'Following', subText: '156'),
                            ],
                          ),

                          SizedBox(height: 10),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Pradip devkota",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("Chef", style: TextStyle(fontSize: 14, color: Colors.black45)),
                    ],
                  ),
                  // End of Column for displaying Profile pic, user name

                  // Expanded(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       // Shows total recipes number
                  //       UserDataColumn(headText: 'Recipe', subText: '49'),
                  //       // Shows total followers number
                  //       UserDataColumn(headText: 'Followers', subText: '69'),
                  //       // Show total following number
                  //       UserDataColumn(headText: 'Following', subText: '156'),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(height: 15.0),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Private Chef"),
                  Text("Passionate about food and life"),
                ],
              ),
              // SizedBox(height: 20.0),
              // MyTabBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                // use seperate file for displaying each tab under profile page
                // combine all the pages for respective tabs in ProfilTab.dart and use here
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return const ProfileTab();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserDataColumn extends StatelessWidget {
  final String headText;
  final String subText;
  const UserDataColumn({required this.headText, required this.subText, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          headText,
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.black45,
          ),
        ),
        Text(
          subText,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
