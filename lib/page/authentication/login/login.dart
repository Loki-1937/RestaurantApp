import 'package:flutter/material.dart';
import 'package:the_restaurant/page/home/myhomepage.dart';
import 'package:the_restaurant/page/home/welcomehome.dart';
import '../../../widgets/text.dart';
import '../../../utils/constants.dart' as globalConstants;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

    print(firstName);
    print(lastName);
    print(password);
  }

  @override
  void initState() {
    super.initState();
    alterName();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
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
                displayText: firstNameController.text,
                styleVariant: "subtitle"),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: globalConstants.primaryColor,
                alignment: Alignment.center,
                minimumSize: globalConstants.buttonMinSize,
                padding: globalConstants.buttonPadding,
                shape: const RoundedRectangleBorder(
                  borderRadius: globalConstants.borderRadius,
                ),
              ),
              onPressed: () {
                // retreive the user inputs
                extractUserBio();
                // navigate to second page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const WelcomehomePage(),
                  ),
                );
                // setState(() {
                //   firstName = firstNameController.text;
                // });
              },
              child: const TextWidget(
                  displayText: "Register", styleVariant: "button"),
            )
          ],
        ));
  }
}
