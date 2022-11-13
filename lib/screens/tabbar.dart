import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class tabbarDemo extends StatefulWidget {
  const tabbarDemo({Key? key}) : super(key: key);

  @override
  State<tabbarDemo> createState() => _tabbarDemoState();
}

class _tabbarDemoState extends State<tabbarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Container(
              width: 300.0,
              height: 40.0,
              margin: EdgeInsets.only(right: 10.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  prefixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(),
                  labelText: "Search",
                ),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 77, 92, 143),
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                text: "New song",
              ),
              Tab(
                text: "Old songs",
              ),
              Tab(
                text: "Favorite",
              ),
            ])),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.play_arrow),
                  trailing: Icon(Icons.headphones),
                  title: Text(" You are listening Song ${index + 1}"),
                );
              },
            ),
            ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.play_arrow),
                  trailing: Icon(Icons.headphones),
                  title: Text(" You are listening Song ${index + 1}"),
                );
              },
            ),
            ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.play_arrow),
                  trailing: Icon(Icons.headphones),
                  title: Text("Song ${index + 1}"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
