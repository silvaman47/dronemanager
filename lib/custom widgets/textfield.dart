import 'package:flutter/material.dart';

class AccTxtBox extends StatelessWidget {
  final Widget label;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  const AccTxtBox(
      {super.key,
      required this.label,
      required this.suffixIcon,
      required this.obscureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          label: label,
          suffixIcon: suffixIcon,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
