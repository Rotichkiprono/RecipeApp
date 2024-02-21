import 'package:flutter/material.dart';
import 'package:recipeapp/configs/constants.dart';
import 'package:recipeapp/views/pages/settings.dart';
import 'package:recipeapp/views/widgets/foodcard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "HOME",
          style: TextStyle(fontFamily: "Script"),
        ),
        backgroundColor: blackColor,
        foregroundColor: appbartextColor,
        automaticallyImplyLeading: true,
        elevation: 10,
        actions: <Widget>[
          Image.asset(
            "assets/images/mainlogo.png",
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Settings()));
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: GridView.builder(
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            return FoodCard(
              imageUrl: foodItems[index]['imageUrl']!,
              title: foodItems[index]['title']!,
              description: foodItems[index]['description']!,
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_add_check),
          label: "Saved",
        ),
      ]),
    );
  }
}
