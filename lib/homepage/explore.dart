import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../customdrawer/drawer.dart';

class Explore extends StatefulWidget {
  Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar(),
        drawer: CustomDrawer(),
        body: const Center(
          child: Text("hello"),
        ));
  }
}
