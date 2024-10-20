import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Edit Note', icon: Icon(Icons.check),),
          SizedBox(
            height: 32,
          ),
          CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLine: 5,
            ),
        ],
      ),
    );
  }
}