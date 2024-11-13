import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.displayText, required this.styleVariant});
  final String displayText;
  final String styleVariant; // title, subtitle, normal-text,small-text
 
  @override
  Widget build(BuildContext context) {
     return  Text(displayText,
    style: (styleVariant =='title')?
    const TextStyle(fontSize: 32,fontWeight: FontWeight.bold, color: Colors.amber):
    const TextStyle(fontSize: 12, color: Color.fromARGB(255, 7, 255, 193)) ,
    );
  }
}