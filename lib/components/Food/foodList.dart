// ignore: file_names
// Horizpntal list of cousine based on different regions
// directly below offer panle
import 'package:flutter/material.dart';
import 'package:foodrecipe/custom/foodColor.dart';
import 'package:foodrecipe/components/Recipe/main_recipe.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentTabIndex = 0;
  int selectedRecipeIndex = 0; // Track selected recipe index

  final List<String> arrFoodTypes = [
    "Indian",
    "Italian",
    "Chinese",
    "Asian",
    "Continental",
    "Mexican",
    "Japanese",
  ];

  final List<bool> _isSelected = List.generate(3, (index) => false);

  final List<List<Map<String, dynamic>>> recipes = [
    // Add your recipe data for each food type here
    // ...
    [
      {
        'cousineName': 'Indian',
        'foodName': 'Margherita Pizza',
        'imageUrl': 'assets/latte.png',
        'process': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      },
    ],
    [
      {
        'cousineName': 'Italian',
        'foodName': 'Chole Bhature',
        'imageUrl': 'assets/latte.png',
        'process': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      },
    ],
    [
      {
        'cousineName': 'Chinese',
        'foodName': 'Margherita Pizza',
        'imageUrl': 'assets/latte.png',
        'process': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      },
    ],
    [
      {
        'cousineName': 'Asian',
        'foodName': 'Margherita Pizza',
        'imageUrl': 'assets/latte.png',
        'process': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      },
    ],
    [
      {
        'cousineName': 'Continental',
        'foodName': 'Margherita Pizza',
        'imageUrl': 'assets/latte.png',
        'process': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      },
    ],
    [
      {
        'cousineName': 'Mexican',
        'foodName': 'Margherita Pizza',
        'imageUrl': 'assets/latte.png',
        'process': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      },
    ],
    [
      {
        'cousineName': 'Japanese',
        'foodName': 'Margherita Pizza',
        'imageUrl': 'assets/latte.png',
        'process': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      },
    ],
    // Add more recipes...
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: arrFoodTypes.length, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    setState(() {
      currentTabIndex = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            // color: FoodColor.colourStylesPrimaryColourPrimary100,
            height: MediaQuery.of(context).size.height * 0.05,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: arrFoodTypes.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentTabIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    margin: const EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                      color: currentTabIndex == index
                          ? FoodColor.colourStylesPrimaryColourPrimary100
                          : FoodColor.colourStylesPrimaryColourPrimary20,
                      borderRadius: BorderRadius.circular(
                        currentTabIndex == index ? 15 : 5,
                      ),
                      border: currentTabIndex == index ? Border.all(color: Colors.deepPurple, width: 3) : null,
                    ),
                    duration: const Duration(milliseconds: 100),
                    child: Center(
                      child: Text(
                        arrFoodTypes[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: currentTabIndex == index ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              // physics: const NeverScrollableScrollPhysics(),
              children: List.generate(arrFoodTypes.length, (index) {
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: recipes[index].length,
                  itemBuilder: (context, recipeIndex) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedRecipeIndex = recipeIndex;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            '${recipes[currentTabIndex][selectedRecipeIndex]['cousineName']}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 5,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height,
                            width: MediaQuery.sizeOf(context).width,
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  style: ListTileStyle.list,
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const MainRecipe()));
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (contex) => const MainRecipe()),
                                    );
                                  },
                                  leading: Image.asset('assets/latte.png'),
                                  title: Text(
                                    '${recipes[currentTabIndex][selectedRecipeIndex]['cousineName']}',
                                  ),
                                  subtitle: Text(
                                    '${recipes[currentTabIndex][selectedRecipeIndex]['process']}',
                                  ),
                                  contentPadding: const EdgeInsetsDirectional.all(15),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
