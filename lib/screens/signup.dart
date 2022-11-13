import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_form/screens/otp.dart';
import 'package:sms_autofill/sms_autofill.dart';

class SignUp extends StatelessWidget {
  bool _obsecutetext = true;
  GlobalKey formkey = GlobalKey();

  TextEditingController mobileNumber = TextEditingController();

  void submit(context) async {
    if (mobileNumber.text == "") return;

    var appSignatureID = await SmsAutoFill().getAppSignature;
    Map sendOtpData = {
      "mobile_number": mobileNumber.text,
      "app_signature_id": appSignatureID
    };
    print(sendOtpData);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OtpScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 77, 92, 143),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 77, 92, 143),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 10.0),
              child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: formkey,
                  child: Column(
                    children: [
                      Container(
                        width: 200.0,
                        height: 150.0,
                        child: Image.asset("images/signup.png"),
                      ),
                      Container(
                          child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(238, 230, 221, 221),
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(top: 50.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            prefixIcon: Icon(Icons.person),
                            hintStyle: TextStyle(),
                            labelText: "Name",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                          controller: mobileNumber,
                          keyboardType: TextInputType.number,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            prefixIcon: Icon(Icons.phone),
                            hintStyle: TextStyle(),
                            labelText: "Mobile number",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            prefixIcon: Icon(Icons.mail),
                            hintStyle: TextStyle(),
                            labelText: "Mail",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            prefixIcon: Icon(Icons.lock),
                            hintStyle: TextStyle(),
                            labelText: "Password",
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        margin: EdgeInsets.only(top: 80.0, bottom: 50.0),
                        width: 250.0,
                        height: 40.0,
                        child: TextButton(
                            style: TextButton.styleFrom(),
                            onPressed: () {
                              submit(context);
                            },
                            child: Text(
                              "  Register ",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 77, 92, 143),
                              ),
                            )),
                      ),
                    ],
                  )),
            )
          ])),
        ));
  }
}
