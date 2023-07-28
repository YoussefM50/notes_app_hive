import 'package:flutter/material.dart';
import 'package:notes_app_hive/Features/data/models/notes_model.dart';
import 'package:notes_app_hive/Features/presentation/views/widgets/notes_edit_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: EditNoteViewBody(
          note: note,
        ),
      ),
    );
  }
}
