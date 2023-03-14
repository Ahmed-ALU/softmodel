import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String text;
  const TextInput({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.greenAccent),
        ),
        labelText: text,
      ),
    );
  }
}
