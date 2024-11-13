import 'package:flutter/material.dart';

class EditTextWidget extends StatefulWidget {
  const EditTextWidget({super.key, this.styleVariation, this.hintText});
  final String? styleVariation;
  final String? hintText;

  @override
  State<EditTextWidget> createState() => _EditTextWidgetState();
}

class _EditTextWidgetState extends State<EditTextWidget> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter a search term',
      ),
    );
  }
}
