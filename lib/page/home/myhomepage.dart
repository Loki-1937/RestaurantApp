import 'package:flutter/material.dart';
import '../authentication/login/login.dart';
import '../../utils/constants.dart' as globalConstants;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return globalConstants.baseLayout(const LoginPage());
  }
}
