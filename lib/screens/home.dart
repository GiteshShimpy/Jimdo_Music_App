import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:login_form/component/bottombar.dart';
import 'package:login_form/component/drawer_widget.dart';
import 'package:login_form/component/my_widget.dart';
import 'package:login_form/component/product_card.dart';
import 'package:login_form/screens/tabbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 77, 92, 143),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tabbarDemo()),
                );
              },
            ),
          ],
          title: Text(
            "Jimdo",
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: SizedBox(
                height: 0.0,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        image: DecorationImage(
                          image: AssetImage("images/pic3.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        image: DecorationImage(
                          image: AssetImage("images/pic1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        image: DecorationImage(
                          image: AssetImage("images/pic2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        image: DecorationImage(
                          image: AssetImage("images/pic4.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        image: DecorationImage(
                          image: AssetImage("images/pic5.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                  options: CarouselOptions(
                    height: 200.0,
                  )),
            ),
            //  ############################

            MyWidget(title_name: "Latest Product", onPress: () {}),
            ProductCard(
              image: "neha.jpg",
              data: "Neha Kakar",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Most Playes",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            ProductCard(
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Just Romance",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ProductCard(
              image: "arijeet.jpg",
              data: "Arijeet sing",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Romentic Hits",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ProductCard(
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
            MyWidget(title_name: "Latest Product", onPress: () {}),
            ProductCard(
              image: "neha.jpg",
              data: "Neha Kakar",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Most Playes",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            ProductCard(
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Just Romance",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ProductCard(
              image: "arijeet.jpg",
              data: "Arijeet sing",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Romentic Hits",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ProductCard(
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
            MyWidget(title_name: "Latest Product", onPress: () {}),
            ProductCard(
              image: "neha.jpg",
              data: "Neha Kakar",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Most Playes",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            ProductCard(
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Just Romance",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ProductCard(
              image: "arijeet.jpg",
              data: "Arijeet sing",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Romentic Hits",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ProductCard(
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Most Playes",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            ProductCard(-
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Just Romance",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ProductCard(
              image: "arijeet.jpg",
              data: "Arijeet sing",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Romentic Hits",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ProductCard(
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
            MyWidget(title_name: "Latest Product", onPress: () {}),
            ProductCard(
              image: "neha.jpg",
              data: "Neha Kakar",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Most Playes",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            ProductCard(
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Just Romance",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ProductCard(
              image: "arijeet.jpg",
              data: "Arijeet sing",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Romentic Hits",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ProductCard(
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
            MyWidget(title_name: "Latest Product", onPress: () {}),
            ProductCard(
              image: "neha.jpg",
              data: "Neha Kakar",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
              child: Text(
                "Most Playes",
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            ProductCard(
              image: "ar.jpg",
              data: "AR Rehmaan",
            ),
          ],
        ),
      ),
    );
  }
}
