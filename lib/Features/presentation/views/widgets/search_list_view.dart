import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/search_cubit/search_cubit.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/search_cubit/search_states.dart';

import '../../../data/models/notes_model.dart';
import 'custom_note_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchNoteStates>(
      builder: (context, state) {
        List<NoteModel>? notes =
            BlocProvider.of<SearchCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: NoteItem(
                    notes: notes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
