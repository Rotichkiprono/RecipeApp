import 'package:flutter/material.dart';
import 'package:recipeapp/configs/constants.dart';

class FoodCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const FoodCard(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4.0,
      child: Stack(
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: appbartextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    color: appbartextColor,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<Map<String, String>> foodItems = [
  {
    "imageUrl": "assets/images/snacks.png",
    "title": "Snacks",
    "description": "Fast food"
  },
  {
    "imageUrl": "assets/images/vegetable.jpeg",
    "title": "vegetables",
    "description": "Cooked vegetables"
  },
  {
    "imageUrl": "assets/images/soup.jpeg",
    "title": "Soups",
    "description": "healthy soups"
  },
  {
    "imageUrl": "assets/images/meats.jpeg",
    "title": "Meat",
    "description": "Cooked meat"
  },
  {
    "imageUrl": "assets/images/bevarage.jpeg",
    "title": "Bevarages",
    "description": "Drinks"
  },
  {
    "imageUrl": "assets/images/baked.jpeg",
    "title": "Baked Goods",
    "description": "Baked"
  },
];
