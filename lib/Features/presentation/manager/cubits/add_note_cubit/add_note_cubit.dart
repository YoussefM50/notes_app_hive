import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/add_note_cubit/add_note_states.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AppNoteInitialState());
}
