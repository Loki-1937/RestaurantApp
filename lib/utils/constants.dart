// styling
import 'dart:ui';
import 'package:flutter/material.dart';

const Color primaryColor = Color(0xff6C4B5E);
const Color secondaryColor = Color(0xff6DA34D);
const Color tertiaryColor = Color(0xffF0E7D8);

const Color textDark = Color(0xff070707);
const Color textGray = Color(0xff4F4F4F);
const Color textHint = Color(0xff9A9A9A);

const buttonPadding = EdgeInsets.symmetric(horizontal: 16);
const borderRadius = BorderRadius.all(Radius.circular(24));
const buttonMinSize = Size(100, 40);
const roundedRectangularBorder = RoundedRectangleBorder(
  borderRadius: borderRadius,
);

// constant texts
const String appName = "The Restaurant";
const String signUpPageTitle = "Welcome to $appName";
const String signUpPageSubtitle = "Where happiness is food...";

const String loginPageTitle = "Welcome back...";
const String PasswordResetTitle = "Password Reset";

const String firstNamePlaceHolder = "first name ";
const String lastNamePlaceHolder = "last name ";
const String emailPlaceHolder = "johndoe@example.com ";
const String passwordPlaceHolder = "*********";

const String buttonRegister = "Register";
const String buttonLogin = "Login";
const String buttonPasswordReset = "send reset password";

// scaffold
baseLayout(Widget TargetPage) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: primaryColor,
    ),
    body: TargetPage,
  );
}

customPadding(Widget targetWidget) {
  return Padding(padding: EdgeInsets.all(24), child: targetWidget);
}

