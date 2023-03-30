import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonMargin,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback? onPressed;
  final double? buttonHeight;
  final double? buttonWidth;
  final EdgeInsetsGeometry? buttonMargin;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 20, 5, 20),
      margin: widget.buttonMargin,
      height: widget.buttonHeight,
      width: widget.buttonWidth,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          widget.buttonText,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
