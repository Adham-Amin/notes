import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notescubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => EditNoteView(notes: notes,),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Color(notes.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  notes.content,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();
                  BlocProvider.of<NotesCubit>(context).allFetchNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Text(
                notes.date,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
