import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MaterialApp(
    home: Staggered1(),
  ));
}

class Staggered1 extends StatefulWidget {
  const Staggered1({super.key});

  @override
  State<Staggered1> createState() => _Staggered1State();
}

class _Staggered1State extends State<Staggered1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered Gridview"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Card(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: const Icon(
                  Icons.local_activity,
                  size: 50,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: const Icon(
                  Icons.class_rounded,
                  size: 50,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: const Icon(
                  Icons.phone,
                  size: 50,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Card(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: const Icon(
                  Icons.memory,
                  size: 50,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: const Icon(
                  Icons.leak_remove,
                  size: 50,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Card(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: const Icon(
                  Icons.map,
                  size: 50,
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: const Icon(
                  Icons.home,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
