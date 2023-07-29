import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/search_cubit/search_states.dart';

import '../../../../../constants.dart';
import '../../../../data/models/notes_model.dart';

class SearchCubit extends Cubit<SearchNoteStates> {
  SearchCubit() : super(SearchNoteInitialState());

  List<NoteModel>? notes;
  fetchSearchNotes(String title) {
    emit(SearchNoteLoadingState());
    try {
      var notesbox = Hive.box<NoteModel>(kNoteBox);

      notes = notesbox.values.where((element) => element.title.contains(title)).toList();
      emit(SearchNoteSuccessState());
    } on Exception catch (e) {
      emit(SearchNoteErrorState(e.toString()));
    }
  }
}
