import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_widget/custom_test.dart';
import '../gridview/gridview_extend.dart';
import '../listview/listview1.dart';
import '../listview/listview2.dart';
import '../listview/listview3.dart';

void main() {
  runApp(MaterialApp(
    home: Bottom_nvgbar(),
  ));
}

class Bottom_nvgbar extends StatefulWidget {
  const Bottom_nvgbar({super.key});

  @override
  State<Bottom_nvgbar> createState() => _Bottom_nvgbarState();
}

class _Bottom_nvgbarState extends State<Bottom_nvgbar> {
  int index = 0;
  var screens = [
    ListviewSeparated(),
    ListviewBuilder(),
    ListGenerate(),
    GridView2(),
    Gridview5()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Bottom NavigationBar"),
        centerTitle: true,
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.blueGrey,
                icon: Icon(
                  Icons.circle_notifications_sharp,
                  color: Colors.black54,
                ),
                label: "Status"),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
                icon: Icon(Icons.phone, color: Colors.black54), label: "Call"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_2_fill,
                    color: Colors.black54),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.group, color: Colors.black54),
                label: "Groups"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings, color: Colors.black54),
                label: "Settings")
          ]),
    );
  }
}
