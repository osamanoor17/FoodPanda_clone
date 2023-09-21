import 'package:flutter/material.dart';

import '../customdrawer/drawer.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.notification_add),
          )
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}
