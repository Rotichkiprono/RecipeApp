import 'package:flutter/material.dart';
import 'package:recipeapp/configs/constants.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: blackColor,
        foregroundColor: appbartextColor,
        automaticallyImplyLeading: true,
      ),
    );
  }
}
