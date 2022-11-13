import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_form/screens/tabbar.dart';

class MyWidget extends StatelessWidget {
  final String title_name;
  final VoidCallback onPress;
  const MyWidget({Key? key, required this.title_name, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 76, 93, 149),
                border: Border.all(
                    width: 1.0, color: Color.fromARGB(255, 235, 241, 236)),
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            margin: EdgeInsets.only(top: 10.0, left: 10.0),
            width: 120.0,
            height: 40.0,
            child: TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => tabbarDemo()),
                  );
                },
                child: Text(
                  title_name.toString(),
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 76, 93, 149),
                border: Border.all(
                    width: 1.0, color: Color.fromARGB(255, 235, 241, 236)),
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            margin: EdgeInsets.only(top: 10.0, left: 120.0, bottom: 10.0),
            width: 120.0,
            height: 40.0,
            child: TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => tabbarDemo()),
                  );
                },
                child: Text(
                  " View all ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
