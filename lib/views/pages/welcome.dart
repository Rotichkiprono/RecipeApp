import 'package:flutter/material.dart';
import 'package:recipeapp/configs/constants.dart';
import 'package:recipeapp/views/pages/login.dart';
import 'package:recipeapp/views/pages/signup.dart';
import 'package:recipeapp/views/widgets/customButton.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("WELCOME",style: TextStyle(fontFamily: "Script"),),
        backgroundColor: blackColor,
        foregroundColor: appbartextColor,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          Image.asset(
            "assets/images/mainlogo.png",
          ),
        ],
      ),
      body: Container(
        constraints:
            const BoxConstraints.expand(), // Ensures image covers full screen
        decoration: const BoxDecoration(
          image: DecorationImage(
            // Ensure correct image path and extension
            image: AssetImage("assets/images/food1.jpg"),
            fit: BoxFit.cover, // Fills entire container
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              customButton(
                  buttonLabel: "Login",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LogIn()));
                  }),
                  const SizedBox(height: 20,),
                customButton(buttonLabel: "Sign Up", onPressed:(){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const SignUp()));
              } ),
            ],
          ),
        ),
      ),
    );
  }
}
