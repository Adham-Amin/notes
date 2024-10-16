
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLine = 1});
  final String hintText;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      decoration: InputDecoration(
        border: outlineInputBorder(color: Colors.white),
        enabledBorder: outlineInputBorder(color: Colors.white),
        focusedBorder: outlineInputBorder(color: const Color(0xFF62FCD7)),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xFF62FCD7)),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({required color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color,
        )
      );
  }
}