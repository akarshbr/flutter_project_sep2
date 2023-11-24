import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Whatsapp"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/icons/whatsapbg.png"),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/icons/stewie.png"),
              ),
              title: Text("Stewie"),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_rounded,
                    color: Colors.blue,
                  ),
                  Text("1234"),
                ],
              ),
              trailing: Column(
                children: [
                  Text("10:10"),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                    child: Text(
                      "1",
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.person),
              ),
              title: Text("Brian"),
              subtitle: Text("12345"),
              trailing: Icon(CupertinoIcons.phone),
            )
          ],
        ),
      ),
    );
  }
}
