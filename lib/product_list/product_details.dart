import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/dummy_data/dummy_data1.dart';

class Details1 extends StatelessWidget {
  const Details1({super.key});

  @override
  Widget build(BuildContext context) {
    final idNew = ModalRoute.of(context)?.settings.arguments;
    final product = products.firstWhere((e) => e["id"] == idNew);
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Product Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          color: Colors.blueGrey,
          elevation: 10,
          margin: EdgeInsets.only(bottom: 400, left: 100, right: 100, top: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Image.asset(
                  product["image"],
                  height: 200,
                  width: 200,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      product["Name"],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹${product["Price"]}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
