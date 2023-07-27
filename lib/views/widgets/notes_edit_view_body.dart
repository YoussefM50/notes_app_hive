import 'package:flutter/material.dart';
import 'package:notes_app_hive/views/widgets/custom_app_bar.dart';
import 'package:notes_app_hive/views/widgets/custom_text_fielsd.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBAr(appbarTitle: 'Edit Note', icon: Icons.check),
          SizedBox(
            height: 50,
          ),
          CustomTextField(title: 'Tilte'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            title: 'Content',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
