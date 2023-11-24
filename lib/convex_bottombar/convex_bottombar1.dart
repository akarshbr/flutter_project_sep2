import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_widget/custom_test.dart';
import '../gridview/gridview_extend.dart';
import '../listview/listview1.dart';

void main() {
  runApp(MaterialApp(
    home: ConvexBottomBar(),
  ));
}

class ConvexBottomBar extends StatefulWidget {
  @override
  State<ConvexBottomBar> createState() => _ConvexBottomBarState();
}

class _ConvexBottomBarState extends State<ConvexBottomBar> {
  int index = 0;
  var screen = [
    ListGenerate(),
    GridView2(),
    Gridview5()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Convex Bottom NavigationBar",style: TextStyle(fontSize: 20),),
        centerTitle: true,
      ),
      body: screen[index],
      bottomNavigationBar: ConvexAppBar(
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        items: [
          TabItem(icon: Icon(CupertinoIcons.home)),
          TabItem(icon: Icon(Icons.local_grocery_store)),
          TabItem(icon: Icon(Icons.history))
        ],
      ),
    );
  }
}
