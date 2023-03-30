// ignore_for_file: prefer_if_null_operators

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final Icon? desiredPreIcon;
  final bool obscureText;
  final String? hintText;

  const CustomTextField({
    Key? key,
    required this.labelText,
    this.desiredPreIcon,
    this.obscureText = false,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 20, 5),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          prefixIcon: desiredPreIcon != null ? desiredPreIcon : null,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2.0),
          ),
        ),
      ),
    );
  }
}
