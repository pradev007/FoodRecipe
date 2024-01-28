import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodrecipe/components/Recipe/main_recipe.dart';
import 'package:foodrecipe/custom/foodColor.dart';

class FavPage extends StatelessWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // minimum: const EdgeInsets.only(top: 15.0),
      child: Scaffold(
        appBar: AppBar(
          // systemOverlayStyle: SystemUiOverlayStyle.dark,
          // title: const Text("Saved Recipe"),
          centerTitle: true,
        ),
        // backgroundColor: Colors.greenAccent,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.separated(
            itemCount: 5, // Display 5 items
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 20);
            },
            itemBuilder: (BuildContext context, int index) {
              // return FoodTile(context: context);
              return FoodTile();
            },
          ),
        ),
      ),
    );
  }
}

class FoodTile extends StatelessWidget {
  const FoodTile({
    super.key,
    // required this.context,
  });

  // final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MainRecipe()));
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/pizza_fav.jpg'),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.13,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Traditional Italian Pizza without added flavour",
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'By Chef John',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.timer_sharp,
                        color: Colors.white70,
                      ),
                      // SizedBox(width: 4),
                      Text(
                        "20 min",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: FoodColor.colourStylesNeutralColourWhite,
                        child: Icon(
                          Icons.bookmark_border_rounded,
                          color: FoodColor.colourStylesPrimaryColourPrimary80,
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
