// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../Features/presentation/views/widgets/custom_search_icon.dart';


class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({
    Key? key,
    required this.appbarTitle, required this.icon, this.onPressed,
  }) : super(key: key);

  final String appbarTitle;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          appbarTitle,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
