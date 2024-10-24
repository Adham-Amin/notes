import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0XFF003049);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var addNote = Hive.box<NoteModel>(kNotesBox);
      await addNote.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(
        AddNoteFaulire(error: e.toString()),
      );
    }
  }
}
