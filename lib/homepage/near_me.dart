import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../customdrawer/drawer.dart';

class NearMe extends StatelessWidget {
  const NearMe({super.key});

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
