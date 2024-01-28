import 'package:flutter/material.dart';
import 'package:foodrecipe/custom/foodColor.dart';
import 'package:foodrecipe/components/Recipe/userRating.dart';

class NewRecipe extends StatelessWidget {
  const NewRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> arrFoodItems = [
      {"name": "Classic Green Salad 1", "Time": "16", "imageUrl": "assets/greenSalad.png"},
      {"name": "Classic Green Salad 2", "Time": "17", "imageUrl": "assets/greenSalad.png"},
      {"name": "Classic Green Salad 3", "Time": "18", "imageUrl": "assets/greenSalad.png"},
      {"name": "Classic Green Salad 4", "Time": "19", "imageUrl": "assets/greenSalad.png"},
      {"name": "Classic Green Salad 5", "Time": "20", "imageUrl": "assets/greenSalad.png"},
      {"name": "Classic Green Salad 6", "Time": "21", "imageUrl": "assets/greenSalad.png"},
    ];
    return Container(
      padding: const EdgeInsets.all(6),
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      color: FoodColor.colourStylesPrimaryColourPrimary100,
      // child: Flexible(
      //   fit: FlexFit.loose,
      //   flex: 1,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        // shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: arrFoodItems.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
        itemBuilder: ((context, int index) {
          return Container(
            color: FoodColor.colourStylesNeutralColourgray2,
            height: MediaQuery.of(context).size.height,
            width: 100,
            child: Column(
              children: [
                Image.asset(
                  arrFoodItems[index]["imageUrl"].toString(),
                  width: 100,
                  height: 100,
                ),
                Text(
                  arrFoodItems[index]['name'],
                  style: const TextStyle(
                    color: FoodColor.colourStylesNeutralColourWhite,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
                  child: Center(child: UserRating()),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
