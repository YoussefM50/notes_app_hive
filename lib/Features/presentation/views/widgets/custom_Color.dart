import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.ispicket, required this.color});
  final Color color;
  final bool ispicket;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        backgroundColor: color,
        radius: 24,
        child: ispicket
            ? const Icon(
                Icons.check,
                size: 14,
              )
            : null,
      ),
    );
  }
}
