import 'package:flutter/material.dart';
import 'package:recipeapp/configs/constants.dart';

class customtext extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double labelfontSize;

  const customtext(
      {super.key,
      required this.label,
      this.labelColor = greytextColor,
      this.labelfontSize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          color: labelColor,
          fontSize: labelfontSize,
          fontWeight: FontWeight.bold),
    );
  }
}
