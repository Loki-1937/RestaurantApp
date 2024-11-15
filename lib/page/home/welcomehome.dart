import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/material.dart';
import '../../utils/constants.dart' as globalConstants;
import '../../utils/requests.dart' as apiCall;
import '../../widgets/text.dart';

class WelcomehomePage extends StatefulWidget {
  const WelcomehomePage({super.key});

  @override
  State<WelcomehomePage> createState() => _WelcomehomePageState();
}

class _WelcomehomePageState extends State<WelcomehomePage> {
  late var responseValue = {};
  @override
  Widget build(BuildContext context) {
    return globalConstants.baseLayout(globalConstants.customPadding(Column(
      children: [
        const Text(" Landing Page "),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: globalConstants.primaryColor,
            alignment: Alignment.center,
            minimumSize: globalConstants.buttonMinSize,
            padding: globalConstants.buttonPadding,
            shape: globalConstants.roundedRectangularBorder,
          ),
          onPressed: () async {
            var res = await apiCall.request(
                'https://jsonplaceholder.typicode.com/albums/1', 'get');

            setState(() {
              responseValue = json.decode(res);
            });
          },
          child: const TextWidget(
              displayText: "Make API Req", styleVariant: "button"),
        ),
        TextWidget(displayText: "${responseValue}", styleVariant: "normal")
      ],
    )));
  }
}
