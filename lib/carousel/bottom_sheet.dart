import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Bottomsheet1(),
  ));
}

class Bottomsheet1 extends StatefulWidget {
  const Bottomsheet1({super.key});

  @override
  State<Bottomsheet1> createState() => _Bottomsheet1State();
}

class _Bottomsheet1State extends State<Bottomsheet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Bottom Sheet"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
            onDoubleTap: () {
              showsheet(context);
            },
            child: Image.asset(
              "assets/list_image/stewie.png",
              height: 300,
              width: 300,
            )),
      ),
    );
  }

  void showsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MaterialButton(
                  splashColor: Colors.transparent,
                  onPressed: () {},
                  child: ListTile(
                    leading: Icon(CupertinoIcons.share),
                    title: Text("Share"),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.copy),
                  title: Text("Copy"),
                )
              ],
            ),
          );
        });
  }
}
