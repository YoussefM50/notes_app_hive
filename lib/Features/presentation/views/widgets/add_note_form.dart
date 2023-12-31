import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app_hive/Features/data/models/notes_model.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_hive/Features/presentation/manager/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app_hive/Features/presentation/views/widgets/color_item.dart';
import 'package:notes_app_hive/constants.dart';
import 'custom_button.dart';
import 'custom_text_fielsd.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            title: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            title: 'Content',
            maxlines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const ColorListView(),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<AddNoteCubit, AddNoteStates>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoadingState ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentdate = DateTime.now();
                    var formattedCurrentDate =
                        DateFormat('dd-mm-yy').format(currentdate);
                    NoteModel notemodel = NoteModel(
                        title: title!,
                        subTitle: subtitle!,
                        date: formattedCurrentDate.toString(),
                        color: Colors.teal.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

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
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentindex = index;
                setState(() {});
                BlocProvider.of<AddNoteCubit>(context).color =
                    kColors[currentindex];
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ColorItem(
                  color: kColors[index],
                  isActive: index == currentindex ? true : false,
                ),
              ),
            );
          }),
    );
  }
}
