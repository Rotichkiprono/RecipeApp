// ignore: file_names
import 'package:flutter/material.dart';
import 'package:recipeapp/configs/constants.dart';

// ignore: camel_case_types
class customButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final buttonLabel;
  final VoidCallback onPressed;

  const customButton({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(buttonLabel,
                style: const TextStyle(fontSize: 14.0, color: appbartextColor,fontStyle: FontStyle.normal)),
                ),
      ),
    );
  }
}
