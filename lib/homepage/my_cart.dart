import 'package:flutter/material.dart';

import '../customdrawer/drawer.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.notification_add),
          )
        ],
      ),
      drawer: CustomDrawer(),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 29.0, top: 10),
            child: Text(
              "MY ORDERS",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
