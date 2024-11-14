import 'package:flutter/material.dart';
import '../utils/constants.dart' as globalConstants;

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key, required this.displayText, required this.styleVariant});
  final String displayText;
  final String
      styleVariant; // title, subtitle, normal-text,small-text, hint-text

  @override
  Widget build(BuildContext context) {
    style() {
      switch (styleVariant) {
        case 'title':
          return const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: globalConstants.textDark);
        case 'subtitle':
          return const TextStyle(fontSize: 24, color: globalConstants.textGray);
        case 'normal-text':
          return const TextStyle(fontSize: 16, color: globalConstants.textGray);
        case 'small-text':
          return const TextStyle(fontSize: 12, color: globalConstants.textGray);
        case 'button':
          return const TextStyle(fontSize: 20, color: Colors.white);
        case 'hint-text':
          return const TextStyle(fontSize: 16, color: globalConstants.textHint);
      }
    }

    return Text(
      displayText,
      style: style(),
      textAlign: TextAlign.start,
    );
  }
}
