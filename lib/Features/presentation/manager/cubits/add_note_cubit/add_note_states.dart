abstract class AddNoteStates {}

class AppNoteInitialState extends AddNoteStates {}

class AppNoteSuccessState extends AddNoteStates {}

class AppNoteErrorState extends AddNoteStates {
  final String errorMessage;

  AppNoteErrorState(this.errorMessage);
}

class AppNoteLoadingState extends AddNoteStates {}
