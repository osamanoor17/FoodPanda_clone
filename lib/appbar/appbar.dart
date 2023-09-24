import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ValueNotifier<int> itemCountNotifier;
  MyAppBar({required this.itemCountNotifier});

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
            color: Colors.grey[300],
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: IconButton(
                icon: const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              hintText: "152/2, Main Street, Jersey...",
              hintStyle: const TextStyle(fontSize: 14),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {

                    itemCountNotifier.value++;
                  },
                ),
                itemCountNotifier.value > 0
                    ? Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 9,
                    child: Text(
                      itemCountNotifier.value.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
