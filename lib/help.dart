// import 'package:flutter/material.dart';
//
// void main() => runApp(FoodDeliveryApp());
//
// class FoodDeliveryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Food Delivery App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Food Delivery App'),
//       ),
//       body: Center(
//         child: Text('Home Page'),
//       ),
//       drawer: AppDrawer(),
//     );
//   }
// }
//
// class AppDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           DrawerHeader(
//             child: Text(
//               'Settings',
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.settings),
//             title: Text('General Settings'),
//             onTap: () {
//               Navigator.pop(context); // Close the drawer
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => GeneralSettingsPage()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class GeneralSettingsPage extends StatefulWidget {
//   @override
//   _GeneralSettingsPageState createState() => _GeneralSettingsPageState();
// }
//
// class _GeneralSettingsPageState extends State<GeneralSettingsPage> {
//   bool receiveNotifications = true;
//   bool darkMode = false;
//   String selectedLanguage = 'English';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('General Settings'),
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(16.0),
//         children: <Widget>[
//           ListTile(
//             title: Text('Receive Notifications'),
//             trailing: Switch(
//               value: receiveNotifications,
//               onChanged: (value) {
//                 setState(() {
//                   receiveNotifications = value;
//                 });
//               },
//             ),
//           ),
//           ListTile(
//             title: Text('Dark Mode'),
//             trailing: Switch(
//               value: darkMode,
//               onChanged: (value) {
//                 setState(() {
//                   darkMode = value;
//                 });
//               },
//             ),
//           ),
//           ListTile(
//             title: Text('Language'),
//             trailing: DropdownButton<String>(
//               value: selectedLanguage,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedLanguage = newValue!;
//                 });
//               },
//               items: <String>[
//                 'English',
//                 'Spanish',
//                 'French',
//                 'German',
//                 // Add more language options here
//               ].map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
