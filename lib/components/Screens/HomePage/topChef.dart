// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:foodrecipe/custom/foodColor.dart';

class TopChef extends StatelessWidget {
  const TopChef({super.key});

  @override
  Widget build(BuildContext context) {
    List arrChefName = ["Pradev", "Ram", "Sita"];
    List arrChefImage = ["assets/dev.jpg", "assets/dev.jpg", "assets/dev.jpg"];
    List arrJob = ["Chef", "Cook", "Assistant"];
    List arrChefRating = ['3', '4', '5'];
    List arrChefItems = ['10', '12', '15'];
    return SizedBox(
      height: 140,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemExtent: 200.0,
        itemCount: 3,
        itemBuilder: (((context, index) {
          return Card(
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // Column for profile pic and Name of chef
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(arrChefImage[index]),
                        radius: 30.0,
                      ),
                      Text(
                        arrChefName[index],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500, color: FoodColor.colourStylesNeutralColourBlack),
                      ),
                      Text(
                        arrJob[index],
                        style: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400, color: FoodColor.colourStylesNeutralColourgray2),
                      ),
                    ],
                  ),
                  Column(
                    // Column for chef's job title, rating, no of items, follow button
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Items: " "${arrChefItems[index]}"),
                      Text("Rating: " "${arrChefRating[index]}"),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            backgroundColor: FoodColor.colourStylesPrimaryColourPrimary100),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                              color: FoodColor.colourStylesNeutralColourWhite,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        })),
      ),
    );
  }
}
