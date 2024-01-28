import 'package:flutter/material.dart';

class ProfileRecipes extends StatelessWidget {
  const ProfileRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> arrProfileRecipe = [
      {'recipeName': "Pizza 1", 'recipeImageUrl': 'assets/pizza_fav.jpg'},
      {'recipeName': "Pizza 2", 'recipeImageUrl': 'assets/pizza_cheese.jpg'},
      {'recipeName': "Pizza 3", 'recipeImageUrl': 'assets/pizza_fav.jpg'},
      {'recipeName': "Pizza 4", 'recipeImageUrl': 'assets/pizza_cheese.jpg'},
      {'recipeName': "Pizza 1", 'recipeImageUrl': 'assets/pizza_fav.jpg'},
      {'recipeName': "Pizza 2", 'recipeImageUrl': 'assets/pizza_cheese.jpg'},
      {'recipeName': "Pizza 3", 'recipeImageUrl': 'assets/pizza_fav.jpg'},
      {'recipeName': "Pizza 4", 'recipeImageUrl': 'assets/pizza_cheese.jpg'},
    ];
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: GridView.builder(
          itemCount: arrProfileRecipe.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              width: 200,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  arrProfileRecipe[index]["recipeImageUrl"],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
        ),
      ),
    );
  }
}
