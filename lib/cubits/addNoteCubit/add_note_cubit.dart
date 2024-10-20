import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
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
