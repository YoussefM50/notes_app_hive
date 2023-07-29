import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_hive/Core/utils/widgets/custom_loading_indicator.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/search_cubit/search_cubit.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/search_cubit/search_states.dart';
import 'package:notes_app_hive/Features/presentation/views/widgets/custom_text_fielsd.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchNoteStates>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is SearchNoteLoadingState) {
          return const CustomLoadingIndicator();
        } else if (state is SearchNoteSuccessState || state is SearchNoteInitialState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 50,
                ),
                CustomTextField(
                  onChanged: (value) {
                    BlocProvider.of<SearchCubit>(context)
                        .fetchSearchNotes(value);
                    print(BlocProvider.of<SearchCubit>(context)
                        .notes);
                  },
                  title: 'Search',
                  icon: Icons.search,
                ),

              ],
            ),
          );
        } else {
          return const Text('Not Found');
        }
      },
    );
  }
}
