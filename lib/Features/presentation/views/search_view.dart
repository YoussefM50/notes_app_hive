import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/search_cubit/search_cubit.dart';
import 'package:notes_app_hive/Features/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: const Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}
