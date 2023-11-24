import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewAssignment(),
  ));
}

class ListViewAssignment extends StatefulWidget {
  const ListViewAssignment({super.key});

  @override
  State<ListViewAssignment> createState() => _ListViewAssignmentState();
}

class _ListViewAssignmentState extends State<ListViewAssignment> {
  var month = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              //height: 30,
              child: Text(month[index],style: TextStyle(fontSize: 30),),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 4 == 0){
              return Card(
               // height: 30,
                color: Colors.red,
                child: Text("adv",style: TextStyle(fontSize: 30,color: Colors.white),),
              );
            }else{
              return Container();
            }
          },
          itemCount: 12),
    );
  }
}
