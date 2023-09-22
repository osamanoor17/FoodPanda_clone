import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
        ),
        body: const SingleChildScrollView(
            child: Column(children: [
          Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 20, right: 100),
              child: Text(
                "MY ORDERS",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 240, top: 20),
              child: Text(
                "Today",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ])
        ])));
  }
}
