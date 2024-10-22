import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_serach_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title, required this.icon, this.onPressed,
  });
  final String title;
  final Icon icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 32),
        ),
        CustomSearchIcon(icon: icon, onPressed: onPressed,),
      ],
    );
  }
}
