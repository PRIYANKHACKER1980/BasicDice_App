import 'package:flutter/material.dart';

class Styled_text extends StatelessWidget {
  const Styled_text(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontStyle: FontStyle.italic,
        ));
  }
}
