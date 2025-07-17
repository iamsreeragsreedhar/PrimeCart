import 'package:flutter/material.dart';
import 'package:flutter_website_task/Core/Utils/Colorconstant.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: const Color.fromARGB(200, 68, 137, 255),
        foregroundColor: ColorConstants.secondaryColor,
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 30.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}