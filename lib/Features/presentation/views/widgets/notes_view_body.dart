import 'package:flutter/material.dart';
import 'package:notes_app_hive/Features/presentation/views/widgets/custom_app_bar.dart';
import '../search_view.dart';
import 'custom_notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBAr(
              appbarTitle: 'Notes',
              icon: Icons.search,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SearchView();
                }));
              }),
          const Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
