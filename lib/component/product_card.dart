import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String data;
  const ProductCard({Key? key, required this.image, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5.0),
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              margin: EdgeInsets.only(left: 5.0),
              width: 100.0,
              height: 120.0,
              child: Column(
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                        image: AssetImage("images/$image"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "$data",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
