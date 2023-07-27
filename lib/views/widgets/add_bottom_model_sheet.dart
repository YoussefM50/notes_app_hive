import 'package:flutter/material.dart';
import 'package:notes_app_hive/views/widgets/custom_text_fielsd.dart';

class AddBottomModelSheet extends StatelessWidget {
  const AddBottomModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            title: 'Title',
          ),
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
