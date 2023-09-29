import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class InviteFriendScreen extends StatelessWidget {
  const InviteFriendScreen({super.key});

  void _shareOnSocialMedia(BuildContext context) {
    String text =
        'Check out our awesome app! Download it now: https://play.google.com/store/apps/details?id=com.global.foodpanda.android';
    Share.share(text, subject: 'App Sharing Subject');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invite a Friend'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Invite your friends to enjoy delicious food with you!',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 10),
                  Text('Send SMS Invitation'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 10),
                  Text('Send Email Invitation'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _shareOnSocialMedia(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share),
                  SizedBox(width: 10),
                  Text('Share on Social Media'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
