import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notescubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/notes_list_view.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({
    super.key,
  });

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).allFetchNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CustomAppBar(
                title: 'Notes',
                icon: Icon(Icons.search),
              ),
              Expanded(child: NotesListView()),
            ],
          ),
        );
      }
}
