import 'package:flutter/material.dart';
import 'package:notes_app_hive/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, this.maxlines =1});

  final String title;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
