import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          iconSize: 30,
        ),
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black26,
          ),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.location_on_rounded),
              hintText: "152/2, Main Street, Jersey...",
              hintStyle: TextStyle(fontSize: 14),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.notification_add),
          ),
        ],
      ),
    );
  }
}
