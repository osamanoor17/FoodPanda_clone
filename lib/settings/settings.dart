import 'package:ecommerce_clone/settings/privacy_settings.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'account_settings.dart';
import 'notification_settings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          const Divider(),
          ListTile(
            title: const Text('Notification Settings'),
            trailing: const Icon(Icons.notifications),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationSettingsScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Account Settings'),
            trailing: const Icon(Icons.account_circle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AccountSettingsScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Privacy Policy'),
            trailing: const Icon(Icons.privacy_tip),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('About Us'),
            trailing: const Icon(Icons.info),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUsScreen()),
              );
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
