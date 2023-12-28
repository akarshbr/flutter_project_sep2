import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/dummy_data/dummy_data1.dart';
import 'package:flutter_project_sep2/product_list/product_details.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductList1(),
      routes: {"Details": (context) => Details1()},
    ),
  );
}

class ProductList1 extends StatelessWidget {
  const ProductList1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Product List"),
        centerTitle: true,
      ),
      body: ListView(
        children: products.map((e) {
          return Card(
            color: Colors.blueGrey,
            child: InkWell(
              focusColor: Colors.transparent,
              child: Expanded(
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        e["image"],
                        height: 100,
                        width: 100,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(child: Text(e["Name"],style: TextStyle(fontSize: 20),))
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "Details", arguments: e["id"]);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
