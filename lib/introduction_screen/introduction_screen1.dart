import 'package:flutter/cupertino.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';

import '../stateful_project/stateful_login.dart';

void main() {
  runApp(MaterialApp(
    home: Introduction1(),
    debugShowCheckedModeBanner: false,
  ));
}

class Introduction1 extends StatelessWidget {
  const Introduction1({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      //globalBackgroundColor: Colors.blueGrey,
      pages: [
        PageViewModel(
            decoration: PageDecoration(
              pageColor: Colors.blueGrey.shade100
            ),
            titleWidget: Text("Page1",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50),),
            image: Image.asset("assets/list_image/stewie.png"),
            body: "Stewie"),
        PageViewModel(
            title: "Page2",
            image: Image.asset("assets/list_image/peter.jpg"),
            body: "Peter"),
        PageViewModel(
            titleWidget: Text("Page3",style: TextStyle(fontSize: 50),),
            image: Image.asset("assets/list_image/brian.jpg"),
            body: "Brian"),
      ],
      onDone: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login_stateful()));
      },
      onSkip: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login_stateful()));
      },
      //skip: Icon(Icons.skip_next),
      next: Icon(Icons.navigate_next),
      done: Icon(Icons.done_outline_rounded),
      back: Icon(CupertinoIcons.back),
      //showSkipButton: true,
      showBackButton: true,
      dotsDecorator: DotsDecorator(
        color: Colors.blueGrey,
        activeColor: Colors.green,
        size: Size(10, 10),
        activeSize: Size(20, 20),
      ),
    );
  }
}
