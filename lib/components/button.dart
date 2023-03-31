import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonMargin,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;
  final double? buttonHeight;
  final double? buttonWidth;
  final EdgeInsetsGeometry? buttonMargin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 5, 20),
        margin: buttonMargin,
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
