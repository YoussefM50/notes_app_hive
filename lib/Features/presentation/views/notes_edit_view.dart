import 'package:flutter/material.dart';
import 'package:notes_app_hive/Features/presentation/views/widgets/notes_edit_view_body.dart';


class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}