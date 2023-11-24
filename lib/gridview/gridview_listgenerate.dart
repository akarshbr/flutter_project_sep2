import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridView2(),
  ));
}

class GridView2 extends StatefulWidget {
  const GridView2({super.key});

  @override
  State<GridView2> createState() => _GridView2State();
}

class _GridView2State extends State<GridView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
        ),
        children: List.generate(
          20,
          (index) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/list_image/stewie.png"),
                  Text(
                    "Stewie",
                    style: GoogleFonts.sourceCodePro(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
