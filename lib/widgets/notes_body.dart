
import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 50,),
        CustomAppBar(),
      ],
    );
  }
}
