import 'package:flutter/material.dart';
import 'package:notes/widgets/notes_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesBody(),
    );
  }
}
