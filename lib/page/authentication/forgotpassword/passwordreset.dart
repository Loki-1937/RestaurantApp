import 'package:flutter/material.dart';
import '../../../utils/constants.dart' as globalConstants;
import '../../../widgets/text.dart';
import '../signup/signup.dart';

class PasswordresetPage extends StatefulWidget {
  const PasswordresetPage({super.key});

  @override
  State<PasswordresetPage> createState() => _PasswordresetPageState();
}

class _PasswordresetPageState extends State<PasswordresetPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    late String email = "";

    extractUserBio() {
      email = emailController.text;
    }

    return globalConstants.baseLayout(globalConstants.customPadding(Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const TextWidget(
            displayText: globalConstants.PasswordResetTitle,
            styleVariant: 'title'),
        TextField(
          controller: emailController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: globalConstants.emailPlaceHolder,
          ),
        ),
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
              displayText: globalConstants.buttonPasswordReset,
              styleVariant: "button"),
        )
      ],
    )));
  }
}
