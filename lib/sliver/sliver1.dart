import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sliver1(),
  ));
}

class Sliver1 extends StatefulWidget {
  const Sliver1({super.key});

  @override
  State<Sliver1> createState() => _Sliver1State();
}

class _Sliver1State extends State<Sliver1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blueGrey,
            floating: true,
            elevation: 10,
            title: Text("Sliver"),
            centerTitle: true,
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    suffixIcon: Icon(CupertinoIcons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                20,
                (index) {
                  return ListTile(
                    title: Text("User $index"),
                    trailing: Icon(CupertinoIcons.person),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
