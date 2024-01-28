import 'package:flutter/material.dart';
import 'package:foodrecipe/components/Recipe/name_of_food.dart/recipe-process.dart';
import 'package:foodrecipe/components/Recipe/newRecipe.dart';
import 'package:foodrecipe/components/Screens/HomePage/firstPage.dart';

class MainRecipe extends StatelessWidget {
  const MainRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipess"),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (contex) => const FirstPage()),
                  );
                },
                icon: const Icon(Icons.arrow_back_outlined));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz_rounded),
            padding: const EdgeInsets.only(right: 20.0),
          ),
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: RecipeProcess(),
          ),
        ],
      ),
      // const BottomDragRecipe(),
    );
  }
}
