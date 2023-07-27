import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_hive/Features/data/models/notes_model.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app_hive/constants.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialState());

  addNote(NotesModel note) async {
    emit(AddNoteLoadingState());
    try {
      var notesbox = Hive.box<NotesModel>(kNoteBox);
      emit(AddNoteSuccessState());
      await notesbox.add(note);
    } catch (e) {
      AddNoteErrorState(e.toString());
    }
  }
}
