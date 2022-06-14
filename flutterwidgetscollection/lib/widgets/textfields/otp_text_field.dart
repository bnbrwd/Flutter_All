import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpTextFieldWidget extends StatefulWidget {
  const OtpTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<OtpTextFieldWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<OtpTextFieldWidget> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cleaning_services),
        onPressed: () {
          print("Floating button was pressed.");
          otpController.clear();
          // otpController.set(['2', '3', '5', '5', '7']);
          // otpController.setValue('3', 0);
          // otpController.setFocus(1);
        },
      ),
      body: Center(
        child: underlineOtpField(context),
      ),
    );
  }

  Widget boxOtpField(BuildContext context) {
    return OTPTextField(
      controller: otpController,
      length: 5,
      width: MediaQuery.of(context).size.width,
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldWidth: 45,
      fieldStyle: FieldStyle.box,
      outlineBorderRadius: 15,
      style: TextStyle(fontSize: 17),
      onChanged: (pin) {
        print("Changed: " + pin);
      },
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
    );
  }

  Widget underlineOtpField(BuildContext context) {
    return OTPTextField(
      length: 6,
      width: MediaQuery.of(context).size.width,
      fieldWidth: 30,
      style: TextStyle(fontSize: 17),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.underline,
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
      onChanged: (pin) {
        print("Changed: " + pin);
      },
    );
  }
}
