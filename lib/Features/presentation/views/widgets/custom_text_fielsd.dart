import 'package:flutter/material.dart';
import 'package:notes_app_hive/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.title,
      this.maxlines = 1,
      this.onSaved,
      this.onChanged,
      this.icon});

  final String title;
  final int maxlines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: kPrimaryColor,
          ),
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
