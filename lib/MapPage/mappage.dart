import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          Row(
            children: [
              Text("data"),
              Text("data"),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Container(
                  child: Image.asset(
            "assets/icons/map.png",
            scale: 0.029,
          )))
        ],
      ),
    );
  }
}
