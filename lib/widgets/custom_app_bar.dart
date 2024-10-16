import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_serach_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 32),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
