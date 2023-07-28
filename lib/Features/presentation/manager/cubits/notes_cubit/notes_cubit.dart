import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/notes_cubit/notes_states.dart';

class AddNoteCubit extends Cubit<NoteStates> {
  AddNoteCubit() : super(NoteInitialState());

}
