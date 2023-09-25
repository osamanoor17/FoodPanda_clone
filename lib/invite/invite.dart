// import 'package:flutter/material.dart';
//
// class InviteFriendScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Invite a Friend'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text(
//               'Invite your friends to enjoy delicious food with you!',
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.message),
//                   SizedBox(width: 10),
//                   Text('Send SMS Invitation'),
//                 ],
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.email),
//                   SizedBox(width: 10),
//                   Text('Send Email Invitation'),
//                 ],
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.share),
//                   SizedBox(width: 10),
//                   Text('Share on Social Media'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InviteFriendScreen extends StatelessWidget {
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
                _showSocialMediaDialog(context);
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

  void _showSocialMediaDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Share on Social Media'),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blueAccent,
                  size: 35,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Colors.purple,
                  size: 35,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blueAccent,
                  size: 35,
                ),
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
