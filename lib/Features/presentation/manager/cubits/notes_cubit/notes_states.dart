import 'package:notes_app_hive/Features/data/models/notes_model.dart';

abstract class NoteStates {}

class NoteInitialState extends NoteStates {}

class NoteSuccessState extends NoteStates {
  final List<NotesModel> notes;

  NoteSuccessState(this.notes);
}

class NoteErrorState extends NoteStates {
  final String errorMessage;

  NoteErrorState(this.errorMessage);
}

class NoteLoadingState extends NoteStates {}
