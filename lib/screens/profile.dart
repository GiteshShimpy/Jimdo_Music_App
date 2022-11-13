import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_form/component/imagepicker.dart';

class profile_screen extends StatelessWidget {
  const profile_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 76, 93, 149),
      ),
      backgroundColor: Color.fromARGB(255, 76, 93, 149),
      body: SingleChildScrollView(
        child: Container(
          height: 700.0,
          width: 550.0,
          decoration: BoxDecoration(
              border: (Border.all(width: 0.1, color: Colors.white)),
              borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
              color: Color.fromARGB(255, 246, 246, 246),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 76, 93, 149),
                    spreadRadius: 3.0,
                    blurRadius: 5.0,
                    blurStyle: BlurStyle.normal),
              ]),
          margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Container(
                child: ImagePickerDemo(),
              ),
              Container(
                height: 45.0,
                margin: EdgeInsets.only(top: 30.0),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 76, 93, 149),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color:   Color.fromARGB(255, 254, 218, 41)
                      ),
                      hintStyle: TextStyle(),
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 77, 92, 143),
                      )),
                ),
              ),
              Container(
                height: 45.0,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color:   Color.fromARGB(255, 254, 218, 41)
                      ),
                      hintStyle: TextStyle(),
                      labelText: "Mobile number",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 77, 92, 143),
                      )),
                  validator: (value) {
                    if (value != null && value.length < 10) {
                      return "";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Container(
                height: 45.0,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(
                        Icons.insert_link_rounded,
                        color:   Color.fromARGB(255, 254, 218, 41)
                      ),
                      hintStyle: TextStyle(),
                      labelText: "App id",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 77, 92, 143),
                      )),
                ),
              ),
              Container(
                height: 45.0,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(
                        Icons.mail,
                        color:   Color.fromARGB(255, 254, 218, 41)
                      ),
                      hintStyle: TextStyle(),
                      labelText: "Mail",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 77, 92, 143),
                      )),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 254, 218, 41)
                    border: Border.all(
                        width: 1.0, color: Color.fromARGB(255, 235, 241, 236)),
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                margin: EdgeInsets.only(top: 40.0),
                width: 120.0,
                height: 40.0,
                child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Text(
                      " Save",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
