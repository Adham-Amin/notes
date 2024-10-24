import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key, required this.icon, this.onPressed,
  });
  final void Function()? onPressed;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.07),
        ),
        alignment: Alignment.center,
        child: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}