import 'package:flutter/material.dart';

class Coloritem extends StatelessWidget {
  const Coloritem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 34),
      child: isActive
          ? CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 24,
              backgroundColor: color,
            ),
    );
  }
}