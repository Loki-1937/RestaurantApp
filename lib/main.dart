import 'package:flutter/material.dart'; 
import '../page/home/myhomepage.dart';
import '../utils/constants.dart' as  globalConstants;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner :false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: globalConstants.primaryColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
