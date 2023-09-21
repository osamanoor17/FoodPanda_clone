import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';

class Explore extends StatefulWidget {
  Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
        appBar: MyAppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(),
                child: Image.asset("assets/icons/icon5.png"),
              ),
              ListTile(
                title: Row(
                  children: [
                    const SizedBox(width: 5),
                    const Text('Credit and payment methods'),
                  ],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: Row(
                  children: [
                    Transform.rotate(
                      angle: 90 * 3.14159265359 / 180,
                      child: const Icon(CupertinoIcons.ticket),
                    ),
                    const SizedBox(width: 16),
                    const Text('Vouchers and offers'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.favorite_border_sharp),
                    SizedBox(width: 16),
                    Text('Favourites'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.edit_note_sharp),
                    SizedBox(width: 16),
                    Text('Orders and reordering'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 16),
                    Text('View Profile'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 16),
                    Text('Addresses'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.help_outline),
                    SizedBox(width: 16),
                    Text('Help Center'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(CupertinoIcons.gift),
                    SizedBox(width: 16),
                    Text('Invite Friends'),
                  ],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: const Row(
                  children: [
                    SizedBox(width: 5),
                    Text('Settings'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    SizedBox(width: 5),
                    Text('Terms & conditions/ Privacy'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    SizedBox(width: 5),
                    Text('Logout'),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'login');
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text("hello"),
        ));
  }
}
