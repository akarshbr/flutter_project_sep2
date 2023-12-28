import 'package:flutter/material.dart';

import 'BigScreen.dart';
import 'MobileScreen.dart';


void main(){
  runApp(MaterialApp(home: Orientation2(),));
}
class Orientation2 extends StatelessWidget {
  const Orientation2({super.key});

  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    if(devicewidth < 600){
      return MobileScreen();
    }
    else{
      return BigScreen();
    }
  }
}
