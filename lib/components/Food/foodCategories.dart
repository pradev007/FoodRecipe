// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:foodrecipe/custom/foodColor.dart';

class FoodCategories extends StatelessWidget {
  final String child;
  const FoodCategories({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    //horizontal scrollable list of foods under selected categories
    return TextButton(
      onPressed: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: const BoxDecoration(
            color: FoodColor.colourStylesPrimaryColourPrimary100,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Center(
          child: Text(
            child,
            style: const TextStyle(color: FoodColor.colourStylesNeutralColourWhite, fontSize: 13),
          ),
        ),
      ),
    );
  }
}
