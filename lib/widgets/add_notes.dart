
import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(hintText: 'Title',),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hintText: 'Content', maxLine: 5,)
        ],
      ),
    );
  }
}
