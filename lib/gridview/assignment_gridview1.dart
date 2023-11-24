import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: GridViewAssignment(),
    ),
  );
}

class GridViewAssignment extends StatefulWidget {
  const GridViewAssignment({super.key});

  @override
  State<GridViewAssignment> createState() => _GridViewAssignmentState();
}

class _GridViewAssignmentState extends State<GridViewAssignment> {
  var icons = [
    Icons.home,
    Icons.notification_important_outlined,
    Icons.linked_camera,
    Icons.local_activity,
    Icons.leak_remove,
    Icons.class_rounded,
    Icons.phone,
    Icons.mail,
    Icons.map,
    Icons.memory,
    Icons.mic_off,
    Icons.note_add,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        childAspectRatio: 2,
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        children: List.generate(
          12,
          (index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 10,
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              margin: EdgeInsets.all(10),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      icons[index],
                      size: 50,
                      color: Colors.black54,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Heart", style: TextStyle(fontSize: 20)),
                        Text("Shaker", style: TextStyle(fontSize: 20))
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
