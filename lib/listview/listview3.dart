import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListviewSeparated(),));
}

class ListviewSeparated extends StatefulWidget {
  const ListviewSeparated({super.key});

  @override
  State<ListviewSeparated> createState() => _ListviewSeparatedState();
}

class _ListviewSeparatedState extends State<ListviewSeparated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.black87,
              child: Image(image: AssetImage("assets/list_image/stewie.png")),);
          },
          separatorBuilder: (context, index) {
            if (index % 2 == 0){
              return Card(
                color: Colors.black87,
                child: Image(image: AssetImage("assets/list_image/brian.jpg")),
              );
            }else{
              return Card();
            }
          },
          itemCount: 10),
    );
  }
}
