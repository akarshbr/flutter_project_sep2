import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Drawer1(),
  ));
}

class Drawer1 extends StatefulWidget {
  const Drawer1({super.key});

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  var titles = ["Profile", "Bookmarks", "Settings"];
  var icons = [Icons.person, Icons.bookmark, Icons.settings];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.blueGrey,
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/icons/twitterlogo.png")
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Bookmark"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
        ),
      ),
    );
  }
}
