import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'app_theme.dart';

class AppOTP extends StatelessWidget {
  const AppOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
        appContext: context,
        length: 4,
        keyboardType: TextInputType.number,
        backgroundColor: Colors.transparent,
        obscureText: true,
        obscuringCharacter: "0",
        enableActiveFill: true,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          activeColor: Colors.black,
          fieldHeight: 60,
          fieldWidth: 70,
          selectedColor: PrimaryColor.withOpacity(1),
          inactiveColor: PrimaryColor.withOpacity(0.50),
          inactiveFillColor: PrimaryColor.withOpacity(0.1),
          activeFillColor:PrimaryColor.withOpacity(0.1),
          selectedFillColor:PrimaryColor.withOpacity(0.1) ,
          borderRadius: BorderRadius.circular(8),
        )
    );
  }
}
