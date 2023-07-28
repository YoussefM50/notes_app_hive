import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_hive/Features/presentation/views/widgets/add_bottom_model_sheet.dart';
import 'package:notes_app_hive/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchAllNotes(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddBottomModelSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
