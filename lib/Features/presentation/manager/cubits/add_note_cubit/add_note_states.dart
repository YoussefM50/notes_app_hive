abstract class AddNoteStates {}

class AddNoteInitialState extends AddNoteStates {}

class AddNoteSuccessState extends AddNoteStates {}

class AddNoteErrorState extends AddNoteStates {
  final String errorMessage;

  AddNoteErrorState(this.errorMessage);
}

class AddNoteLoadingState extends AddNoteStates {}
