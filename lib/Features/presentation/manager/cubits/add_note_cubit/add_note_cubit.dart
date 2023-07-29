import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_hive/Features/data/models/notes_model.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app_hive/constants.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialState());
  Color? color = const Color(0xffAC3931);
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNoteLoadingState());
    try {
      var notesbox = Hive.box<NoteModel>(kNoteBox);
      await notesbox.add(note);
      emit(AddNoteSuccessState());
    } catch (e) {
      emit(AddNoteErrorState(e.toString()));
    }
  }
}
