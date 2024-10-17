
import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

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
        focusedBorder: outlineInputBorder(color: kPrimeColor),
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimeColor),
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