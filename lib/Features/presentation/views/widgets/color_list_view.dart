import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_hive/constants.dart';

import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: GestureDetector(
                  onTap: () {
                    currentindex = index;
                    BlocProvider.of<AddNoteCubit>(context).color =
                        kColors[index];
                    setState(() {});
                  },
                  child: ColorItem(
                    color: kColors[index],
                    isActive: currentindex == index,
                  ),
                ));
          }),
    );
  }
}
