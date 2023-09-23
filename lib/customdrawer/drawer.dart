import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(),
            child: Image.asset("assets/icons/icon5.png"),
          ),
          ListTile(
            title: const Row(
              children: [
                SizedBox(width: 5),
                Text('Credit and payment methods'),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context,  'payment_screen');
            },
          ),
          const Divider(),
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
            onTap: () {
              Navigator.pushNamed(context, 'vouchers_offers');
            },
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
            onTap: () {
              Navigator.pushNamed(context, 'mycart');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 16),
                Text('View Profile'),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, 'my_profile');
            },
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
          const Divider(),
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
    );
  }
}
