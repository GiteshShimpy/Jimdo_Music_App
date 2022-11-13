import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VarifyOtp extends StatefulWidget {
  VarifyOtp({Key? key}) : super(key: key);

  @override
  State<VarifyOtp> createState() => _VarifyOtpState();
}

class _VarifyOtpState extends State<VarifyOtp> {
  String codeValue = "";
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
    print("OTP listen Called");
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
