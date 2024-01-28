import 'package:flutter/material.dart';

class ProfileSaved extends StatelessWidget {
  const ProfileSaved({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> arrProfileVideos = [
      {'recipeName': "Pizza 1", 'recipeImageUrl': 'assets/pizza_sauce.jpg'},
      {'recipeName': "Pizza 2", 'recipeImageUrl': 'assets/pizza_cheese.jpg'},
      {'recipeName': "Pizza 3", 'recipeImageUrl': 'assets/pizza_sauce.jpg'},
      {'recipeName': "Pizza 4", 'recipeImageUrl': 'assets/pizza_cheese.jpg'},
      {'recipeName': "Pizza 1", 'recipeImageUrl': 'assets/pizza_sauce.jpg'},
      {'recipeName': "Pizza 2", 'recipeImageUrl': 'assets/pizza_cheese.jpg'},
      {'recipeName': "Pizza 3", 'recipeImageUrl': 'assets/pizza_sauce.jpg'},
      {'recipeName': "Pizza 4", 'recipeImageUrl': 'assets/pizza_cheese.jpg'},
    ];
    return GridView.builder(
      itemCount: arrProfileVideos.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              arrProfileVideos[index]["recipeImageUrl"],
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
    );
  }
}
