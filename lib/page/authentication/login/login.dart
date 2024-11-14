import 'package:flutter/material.dart';
import 'package:the_restaurant/page/authentication/signup/signup.dart';
import '../../../widgets/text.dart';
import '../../../utils/constants.dart' as globalConstants;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  late String email = "";
  late String password = "";

  extractUserBio() {
    email = emailController.text;
    password = passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return globalConstants.baseLayout(globalConstants.customPadding(Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const TextWidget(
            displayText: globalConstants.loginPageTitle, styleVariant: 'title'),
        TextField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: globalConstants.emailPlaceHolder,
            )),
        TextField(
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: globalConstants.passwordPlaceHolder,
            )),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: globalConstants.primaryColor,
            alignment: Alignment.center,
            minimumSize: globalConstants.buttonMinSize,
            padding: globalConstants.buttonPadding,
            shape: globalConstants.roundedRectangularBorder,
          ),
          onPressed: () {
            extractUserBio();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SignupPage(),
              ),
            );
          },
          child: const TextWidget(
              displayText: globalConstants.buttonLogin, styleVariant: "button"),
        )
      ],
    )));
  }
}
