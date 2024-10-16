
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xFF62FCD7),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: const Text('Add', style: TextStyle(color: Colors.black, fontSize: 20),),
    );
  }
}