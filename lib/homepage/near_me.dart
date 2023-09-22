import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../customTextfield/textfield.dart';
import '../customdrawer/drawer.dart';

class NearMe extends StatelessWidget {
  const NearMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: MyAppBar(),
        drawer: CustomDrawer(),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CustomTextField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 32.0, top: 10),
                  child: Text(
                    "By Type of Food",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 65),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View all",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      )),
                )
              ],
            ),
          ],
        ));
  }
}
