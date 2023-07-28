import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_hive/Features/data/models/notes_model.dart';
import 'package:notes_app_hive/constants.dart';

part 'notes_states.dart';

class NotesCubit extends Cubit<NoteStates> {
  NotesCubit() : super(NoteInitialState());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesbox = Hive.box<NoteModel>(kNoteBox);

    notes = notesbox.values.toList();
    emit(NoteSuccessState());
  }
}
