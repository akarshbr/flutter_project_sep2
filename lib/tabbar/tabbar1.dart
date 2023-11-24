import 'package:flutter/material.dart';

import '../gridview/gridview_constructor.dart';
import '../listview/Assignment_ListView1.dart';
import '../listview/listview1.dart';

void main() {
  runApp(
    MaterialApp(
      home: Tabbar1(),
      theme: ThemeData(primarySwatch: Colors.green,primaryColorLight: Colors.green),
    ),
  );
}

class Tabbar1 extends StatelessWidget {
  const Tabbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar"),
          centerTitle: true,
          bottom: TabBar(tabs: [Text("Chats"), Text("Status"), Text("Calls")]),
        ),
        body: TabBarView(children: [
          ListGenerate(),
          GridView1(),
          ListView1Assignment()
        ])
      ),
    );
  }
}
