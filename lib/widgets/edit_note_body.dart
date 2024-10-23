import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notescubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field.dart';
import 'package:notes/widgets/edit_note_color.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: const Icon(Icons.check),
            onPressed: () {
              widget.notes.title = title ?? widget.notes.title;
              widget.notes.content = content ?? widget.notes.content;
              BlocProvider.of<NotesCubit>(context).allFetchNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onChanged: (data) {
              title = data;
            },
            hintText: widget.notes.title,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (data) {
              content = data;
            },
            hintText: widget.notes.content,
            maxLine: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          EditNoteColor(note: widget.notes)
        ],
      ),
    );
  }
}
