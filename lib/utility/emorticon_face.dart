import 'package:flutter/material.dart';

class Emorticon_Face extends StatelessWidget {
  const Emorticon_Face({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      child: (Icon(
        Icons.emoji_emotions_sharp,
        color: const Color.fromARGB(255, 255, 232, 25),
        size: 30.0,
      )),
    );
  }
}
