abstract class SearchNoteStates {}

class SearchNoteInitialState extends SearchNoteStates {}

class SearchNoteSuccessState extends SearchNoteStates {}

class SearchNoteErrorState extends SearchNoteStates {
  final String errorMessage;

  SearchNoteErrorState(this.errorMessage);
}

class SearchNoteLoadingState extends SearchNoteStates {}
