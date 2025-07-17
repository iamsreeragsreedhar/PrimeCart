import 'package:flutter/material.dart';

class TextfieldCommon extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool readOnly;
  final bool isPassword;
  final String? hintText;
  final String? errorText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final Icon? suffixIcon;
   int? maxlines;

   TextfieldCommon({
    super.key,
    required this.controller,
    required this.label,
    this.readOnly = false,
    this.isPassword = false,
    this.onChanged,
    this.suffixIcon,
    this.hintText,
    this.errorText,
    this.keyboardType, 
    this.maxlines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        maxLines: maxlines,
        controller: controller,
        readOnly: readOnly,
        obscureText: isPassword,
        keyboardType: keyboardType ?? TextInputType.text,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Color.fromARGB(255, 107, 99, 99)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color(0xFFF5F7FA),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          labelText: label,
          hintText: hintText,
          errorText: errorText,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}