import 'dart:ui';

import 'package:flutter/material.dart';

class EditTextWidget extends StatefulWidget {
  const EditTextWidget(
      {super.key, this.hintText, this.callback, this.controller});
  final String? hintText;
  final VoidCallback? callback;
  final TextEditingController? controller;

  @override
  State<EditTextWidget> createState() => _EditTextWidgetState();
}

class _EditTextWidgetState extends State<EditTextWidget> {
  @override
  Widget build(BuildContext context) {
    getAlteredText() {
      String text = widget.controller!.text; 
    }

    return TextField(
      onChanged: getAlteredText(),
      controller: widget.controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: widget.hintText,
      ),
    );
  }
}
