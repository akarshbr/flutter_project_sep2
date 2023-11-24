import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListGenerate(),
  ));
}

class ListGenerate extends StatefulWidget {
  @override
  State<ListGenerate> createState() => _ListGenerateState();
}

class _ListGenerateState extends State<ListGenerate> {
  var name = ["Stewie", "Brian", "Chris", "Meg", "Peter", "Lois"];
  var image = [
    "assets/list_image/stewie.png",
    "assets/list_image/brian.jpg",
    "assets/list_image/chris.jpeg",
    "assets/list_image/meg.jpg",
    "assets/list_image/peter.jpg",
    "assets/list_image/lois.jpg"
  ];
  var time = ["10:20", "04:20", "05:30", "08:33", "02:40", "11:40"];
  var msg = ["hi", "hello", "hi", "hello", "hi", "hello"];
  var unread = ["12", "2", "4", "8", "9", "3"];
  var icons = [
    Icon(
      Icons.done_all,
      color: Colors.blue,
    ),
    Icon(
      Icons.done,
      color: Colors.blue,
    ),
    Icon(
      Icons.access_time,size: 18,
    ),
    Icon(
      Icons.done_all,
    ),
    Icon(
      Icons.done,
      color: Colors.blue,
    ),
    Icon(
      Icons.access_time,size: 18,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green.shade900,
      //   title: Text("Whatsapp"),
      // ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/icons/whatsapbg.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: List.generate(
            6,
            (index) => ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              title: Text(name[index]),
              subtitle: Row(
                children: [
                  icons[index],
                  SizedBox(
                    width: 3,
                  ),
                  Text(msg[index]),
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(time[index]),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                    child: Text(
                      unread[index],
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
