import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(notes: notes,),
    );
  }
}