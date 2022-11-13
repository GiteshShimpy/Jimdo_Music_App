import 'package:flutter/material.dart';
import 'package:login_form/component/bottombar.dart';
import 'package:login_form/screens/home.dart';
import 'package:login_form/screens/otp.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:login_form/screens/signup.dart' show SignUp;

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obsecutetext = true;
  bool check = false;
  bool password_check = false;
  bool mail_check = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 77, 92, 143),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              top: 40.0, left: 15.0, right: 15.0, bottom: 150.0),
          width: 1000.0,
          height: 750.0,
          child: Column(
            children: [
              Container(height: 200.0, child: Image.asset("images/top.png")),
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 25.0, color: Color.fromARGB(255, 186, 209, 221)),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0, left: 15.0, right: 10.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: formkey,
                  child: Column(
                    children: [
                      Container(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            prefixIcon: Icon(Icons.mail),
                            hintStyle: TextStyle(),
                            labelText: "email",
                          ),
                          validator: (value) {
                            if (value == "gitesh23shimpy@gmail.com") {
                              return null;
                              mail_check = true;
                            } else {
                              return "Enter gitesh23shimpy@gmail.com";
                            }
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: _obsecutetext,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: GestureDetector(
                              onTap: (() {
                                setState(() {
                                  _obsecutetext = !_obsecutetext;
                                });
                              }),
                              child: Icon(_obsecutetext
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            hintStyle: TextStyle(),
                            labelText: "Password",
                          ),
                          validator: (Value) {
                            if (Value == "4957") {
                              password_check = true;
                              return null;
                            } else
                              return "Password should be '4957'";
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 329.0,
                            child: Row(
                              children: [
                                Checkbox(
                                  value: check,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      check = value!;
                                    });
                                  },
                                ),
                                Text("Reminder"),
                                Container(
                                  margin:
                                      EdgeInsets.only(top: 10.0, left: 98.0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Forgot password",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 53, 233, 37),
                    border: Border.all(
                        width: 1.0, color: Color.fromARGB(255, 235, 241, 236)),
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                margin: EdgeInsets.only(top: 20.0),
                width: 320.0,
                child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      final isvalidform = formkey.currentState!.validate();
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomBarScreen()),
                        );
                      } else {
                        print("Enter proper credentials");
                      }
                    },
                    child: Text(
                      "  Login ",
                      style: TextStyle(
                        color: Color.fromARGB(255, 77, 92, 143),
                      ),
                    )),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20.0, left: 50.0),
                        child: Text("Don't have an account?")),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20.0, left: 70.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color.fromARGB(255, 0, 0, 0),
                          border:
                              Border.all(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        width: 100.0,
                        height: 1.0,
                      ),
                      Text("Or"),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color.fromARGB(255, 0, 0, 0),
                          border:
                              Border.all(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        width: 100.0,
                        height: 1.0,
                      )
                    ],
                  )),
              Container(
                height: 60.0,
                width: 500.0,
                margin: EdgeInsets.only(left: 80.0, top: 15.0),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {}, child: Image.asset("images/f.png")),
                    TextButton(
                        onPressed: () {}, child: Image.asset("images/g.png")),
                    TextButton(
                        onPressed: () {}, child: Image.asset("images/l.png")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
