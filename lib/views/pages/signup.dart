import 'package:flutter/material.dart';
import 'package:recipeapp/configs/constants.dart';
import 'package:recipeapp/views/pages/homepage.dart';
import 'package:recipeapp/views/widgets/customButton.dart';
import 'package:recipeapp/views/widgets/customtextfield.dart';
import 'package:recipeapp/views/widgets/customtext.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController = TextEditingController();
    TextEditingController NameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController PhoneController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        backgroundColor: blackColor,
        foregroundColor: appbartextColor,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          Image.asset("assets/images/mainlogo.png",),
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
                      label: "SignUp Screen",
                      labelColor: blackColor,
                      labelfontSize: 30)
                ],
              ),
              const SizedBox(height: 10),
              const customtext(label: "Email "),
              customTextField(
                controller: EmailController,
                icon: Icons.email,
                hint: "G-mail",
              ),
              const customtext(label: "First Name "),
              customTextField(
                controller: NameController,
                icon: Icons.person,
              ),
              const customtext(label: "Second Name "),
              customTextField(
                controller: NameController,
                icon: Icons.person,
              ),
              const customtext(label: "Phone Number "),
              customTextField(
                controller: PhoneController,
                icon: Icons.phone,
              ),
              const customtext(label: "Password"),
              customTextField(
                controller: passwordController,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
              ),
              const customtext(label: " Confirm Password"),
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
                buttonLabel: "Submit",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
