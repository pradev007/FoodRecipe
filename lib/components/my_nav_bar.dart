import 'package:flutter/material.dart';
import 'package:foodrecipe/components/Screens/Favourite/fav_page.dart';
import 'package:foodrecipe/components/Screens/Notification/notification_main_page.dart';
import 'package:foodrecipe/custom/foodColor.dart';
import 'package:foodrecipe/components/Screens/Notification/recipe_alert.dart';
import 'package:foodrecipe/components/Screens/Profile/my_profile_page.dart';
import 'package:foodrecipe/components/Screens/HomePage/firstPage.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({Key? key}) : super(key: key);

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    const FirstPage(),
    const FavPage(),
    const NotificationMainPage(),
    const MyProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:
            FoodColor.colourStylesNeutralColourWhite, // Background color of the bottom navigation bar itself
        selectedItemColor: FoodColor.colourStylesPrimaryColourPrimary100, // Color of the selected item/icon
        unselectedItemColor: FoodColor.colourStylesNeutralColourBlack, // Color of unselected items/icons
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
