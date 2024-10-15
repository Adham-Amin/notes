import 'package:flutter/material.dart';
import 'package:notes/widgets/notes_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesBody(),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        ),
        backgroundColor: Colors.blue[400],
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
