import 'package:flutter/material.dart';
import 'package:recipeapp/views/pages/homepage.dart';
import 'package:recipeapp/configs/constants.dart';
import 'package:recipeapp/views/widgets/customButton.dart';
import 'package:recipeapp/views/widgets/customtextfield.dart';
import 'package:recipeapp/views/widgets/customtext.dart';


class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: blackColor,
        foregroundColor: appbartextColor,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          Image.asset(
            "assets/images/mainlogo.png",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/mainlogo.png"),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customtext(
                      label: "Login Screen",
                      labelColor: blackColor,
                      labelfontSize: 30)
                ],
              ),
              const SizedBox(height: 10),
              const customtext(label: "Username"),
              customTextField(
                controller: userNameController,
                icon: Icons.person,
                hint: "Username or Number",
              ),
              const customtext(label: "Password"),
              customTextField(
                controller: passwordController,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
              ),
              const SizedBox(
                height: 30,
              ),
              customButton(
                buttonLabel: "LogIn",
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customtext(label: "Forgot Password?"),
                  SizedBox(
                    width: 10,
                  ),
                  customtext(
                    label: "Recover",
                    labelColor: primaryColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
