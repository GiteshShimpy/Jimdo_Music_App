import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:login_form/component/bottombar.dart';
import 'package:login_form/screens/home.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> with CodeAutoFill {
  String codeValue = "";

  @override
  void codeUpdated() {
    print("Update code $code");
    setState(() {
      print("codeUpdated");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listenOtp();
  }

  void listenOtp() async {
    // await SmsAutoFill().unregisterListener();
    // listenForCode();
    await SmsAutoFill().listenForCode;
    print("OTP listen Called ${SmsAutoFill().listenForCode}");
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    print("unregisterListener");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: PinFieldAutoFill(
                currentCode: codeValue,
                codeLength: 4,
                onCodeChanged: (code) {
                  print("onCodeChanged $code");
                  setState(() {
                    codeValue = code.toString();
                  });
                },
                onCodeSubmitted: (val) {
                  print("onCodeSubmitted $val");
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print(codeValue);
                },
                child: const Text("Verify OTP")),
            ElevatedButton(onPressed: listenOtp, child: const Text("Resend"))
          ],
        ),
      ),
    );
  }
}
