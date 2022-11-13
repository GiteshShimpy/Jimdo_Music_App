import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:login_form/screens/login.dart';
import 'package:login_form/screens/send_otp.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login_form",
    home: LoginScreen(),
  ));
}
