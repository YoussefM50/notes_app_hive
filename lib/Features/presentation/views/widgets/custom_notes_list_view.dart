import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_hive/Features/data/models/notes_model.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/notes_cubit/notes_cubit.dart';


import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NoteStates>(
      builder: (context, state) {
        List<NoteModel>? notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: NoteItem(),
                );
              }),
        );
      },
    );
  }
}
