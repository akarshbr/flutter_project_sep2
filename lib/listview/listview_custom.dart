import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewCustom(),
  ));
}

class ListViewCustom extends StatefulWidget {
  const ListViewCustom({super.key});

  @override
  State<ListViewCustom> createState() => _ListViewCustomState();
}

class _ListViewCustomState extends State<ListViewCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.camera_alt_outlined),
          Icon(Icons.search),
          Icon(Icons.circle),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Profile")),
            ];
          })
        ],
      ),
    );
  }
}
