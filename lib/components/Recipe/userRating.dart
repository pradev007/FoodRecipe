import 'package:flutter/material.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
import 'dart:async';

import 'package:foodrecipe/custom/foodColor.dart';

class UserRating extends StatefulWidget {
  const UserRating({Key? key}) : super(key: key);

  @override
  State<UserRating> createState() => _UserRatingState();
}

class _UserRatingState extends State<UserRating> {
  int myCount = 0;
  int userRating = 0;
  bool canRate = true;
  bool hasRated = false;
  late Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer(const Duration(seconds: 3), () {
      if (mounted && userRating != 0) {
        setState(() {
          canRate = false;
        });
      }
    });
  }

  void resetTimer() {
    _timer?.cancel();
    startTimer();
  }

  void updateRating(int count) {
    setState(() {
      myCount = count;
      userRating = count;
      hasRated = true;
    });
    resetTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          canRate
              ? FivePointedStar(
                  size: const Size(20, 20),
                  onChange: updateRating,
                )
              : userRating > 0
                  ? Row(
                      children: List.generate(
                        userRating,
                        (index) => const Icon(
                          Icons.star,
                          color: FoodColor.colourStylesSecondaryColourSecondary80,
                          size: 20,
                        ),
                      ),
                    )
                  : const Text(
                      'Please rate!',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
        ],
      ),
    );
  }
}
