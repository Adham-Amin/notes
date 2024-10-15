import 'package:flutter/material.dart';
import 'package:notes/widgets/add_notes.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      backgroundColor: const Color.fromARGB(255, 102, 218, 205),
      onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32)
          ),
          context: context,
          builder: (context) => const AddNotes(),
        );
      },
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
