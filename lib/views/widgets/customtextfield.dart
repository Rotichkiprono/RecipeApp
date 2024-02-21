import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final IconData? icon;
  final bool hideText;
  final bool isPassword;
  final String? hint;
  const customTextField({
    super.key,
    required this.controller,
    this.icon,
    this.hideText = false,
    this.isPassword = false,
    this.hint,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular((10)))),
          prefixIcon: Icon(icon),
          suffixIcon: isPassword
              ? Icon(Icons.visibility)
              : Container(
                  height: 10,
                  width: 10,
                )),
      obscureText: hideText,
    );
  }
}
