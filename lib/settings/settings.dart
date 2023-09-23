import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
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
              _navigateToNotificationSettings(context);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Account Settings'),
            trailing: const Icon(Icons.account_circle),
            onTap: () {
              _navigateToAccountSettings(context);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Privacy Policy'),
            trailing: const Icon(Icons.privacy_tip),
            onTap: () {
              _navigateToPrivacyPolicy(context);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('About Us'),
            trailing: const Icon(Icons.info),
            onTap: () {
              _navigateToAboutUs(context);
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
  void _navigateToNotificationSettings(BuildContext context) {
  }
  void _navigateToAccountSettings(BuildContext context) {
  }
  void _navigateToPrivacyPolicy(BuildContext context) {
  }
  void _navigateToAboutUs(BuildContext context) {
  }
}