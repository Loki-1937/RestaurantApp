import 'package:flutter/material.dart';
import '../../../widgets/text.dart';
import '../../../utils/constants.dart' as globalConstants;
import '../forgotpassword/passwordreset.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  late String firstName = "";
  late String lastName = "";
  late String password = "";

  alterName() {
    firstName = firstNameController.text;
  }

  extractUserBio() {
    firstName = firstNameController.text;
    lastName = lastNameController.text;
    password = passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return globalConstants.baseLayout(globalConstants.customPadding(Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        const TextWidget(
            displayText: globalConstants.signUpPageTitle,
            styleVariant: "title"),
        const TextWidget(
            displayText: globalConstants.signUpPageSubtitle,
            styleVariant: "subtitle"),
        TextField(
          controller: firstNameController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: globalConstants.firstNamePlaceHolder,
          ),
        ),
        TextField(
            controller: lastNameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: globalConstants.lastNamePlaceHolder,
            )),
        TextField(
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: globalConstants.passwordPlaceHolder,
            )),
        TextWidget(
            displayText: firstNameController.text, styleVariant: "subtitle"),
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
                builder: (context) => const PasswordresetPage(),
              ),
            );
          },
          child: const TextWidget(
              displayText: globalConstants.buttonPasswordReset,
              styleVariant: "button"),
        )
      ],
    )));
  }
}
