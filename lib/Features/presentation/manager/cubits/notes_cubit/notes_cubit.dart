import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_hive/Features/data/models/notes_model.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/notes_cubit/notes_states.dart';

import '../../../../../constants.dart';

class NoteCubit extends Cubit<NoteStates> {
  NoteCubit() : super(NoteInitialState());

  fetchAllNotes() {
    emit(NoteLoadingState());
    try {
      var notesbox = Hive.box<NotesModel>(kNoteBox);
      List<NotesModel> notes = notesbox.values.toList();
      emit(NoteSuccessState(notes));
    } catch (e) {
      emit(NoteErrorState(e.toString()));
    }
  }
}
