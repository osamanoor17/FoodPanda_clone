import 'package:flutter/material.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  _NotificationSettingsScreenState createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool enableNotifications = true;
  bool orderUpdates = true;
  bool promotions = true;
  bool newItems = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enable Notifications',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Switch(
              value: enableNotifications,
              onChanged: (value) {
                setState(() {
                  enableNotifications = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            Text(
              'Notification Preferences',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Order Updates'),
              subtitle: Text('Receive updates on your orders'),
              trailing: Switch(
                value: orderUpdates,
                onChanged: (value) {
                  setState(() {
                    orderUpdates = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Promotions'),
              subtitle: Text('Receive promotional offers'),
              trailing: Switch(
                value: promotions,
                onChanged: (value) {
                  setState(() {
                    promotions = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('New Items'),
              subtitle: Text('Receive notifications for new menu items'),
              trailing: Switch(
                value: newItems,
                onChanged: (value) {
                  setState(() {
                    newItems = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
