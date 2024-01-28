import 'package:flutter/material.dart';
import 'package:foodrecipe/components/Screens/Favourite/fav_page.dart';
import 'package:foodrecipe/custom/foodColor.dart';
import 'package:foodrecipe/components/Food/foodList.dart';
import 'package:foodrecipe/components/my_nav_bar.dart';
import 'package:foodrecipe/components/Screens/Notification/recipe_alert.dart';
import 'package:foodrecipe/components/Screens/Profile/my_profile_page.dart';
import 'package:foodrecipe/components/Recipe/newRecipe.dart';
import 'package:foodrecipe/components/Screens/HomePage/topChef.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const MyNavBar(), // Add MyNavBar as bottom navigation bar
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 50.0, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text(
                        'Hello PraDev',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'What are you cooking today?',
                        style: TextStyle(
                          color: Color(0xFFA9A9A9),
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyProfilePage()));
                        },
                        child: Image.asset("assets/dev.jpg"),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 45.0,
                        width: MediaQuery.of(context).size.width,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            hintText: "search here",
                          ),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 20.0)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 45.0,
                            width: 45.0,
                            decoration: const BoxDecoration(
                              color: FoodColor.colourStylesPrimaryColourPrimary100,
                            ),
                          ),
                          const Icon(
                            Icons.filter_list,
                            size: 30.0,
                            color: FoodColor.colourStylesNeutralColourWhite,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ClipRect(
                child: Banner(
                  message: "New!!",
                  location: BannerLocation.topStart,
                  color: Colors.red,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                        height: 180.0,
                        color: FoodColor.colourStylesSecondaryColourSecondary80,
                      ),
                      Positioned(
                        top: 10,
                        left: 150.0,
                        child: Image.asset(
                          "assets/offer.png",
                          scale: 7,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: -50.0,
                        child: Image.asset(
                          "assets/happy.png",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100.0, left: 20.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 1,
                            backgroundColor: FoodColor.colourStylesPrimaryColourPrimary100,
                          ),
                          child: const Text(
                            "Shop Now",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: FoodColor.colourStylesNeutralColourWhite,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const FoodList(),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  "New Recipes",
                  style: TextStyle(
                    color: FoodColor.colourStylesNeutralColourBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const NewRecipe(),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "Top Chefs of the Week",
                  style: TextStyle(
                    color: FoodColor.colourStylesNeutralColourBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const TopChef(),
            ],
          ),
        ),
      ),
    );
  }
}
