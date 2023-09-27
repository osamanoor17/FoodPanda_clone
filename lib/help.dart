// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         drawer: CustomDrawer(),
//       ),
//     );
//   }
// }
//
// class CustomDrawer extends StatelessWidget {
//   final List<Map<String, String>> drawerData = [
//     {
//       'title': 'Title 0',
//       'description': 'Description 0',
//       'imageUrl':
//           'https://img.freepik.com/free-vector/sticker-template-with-pizza-isolated_1308-62307.jpg',
//     },
//     {
//       'title': 'Title 1',
//       'description': 'Description 1',
//       'imageUrl': 'https://via.placeholder.com/150',
//     },
//     {
//       'title': 'Title 2',
//       'description': 'Description 2',
//       'imageUrl': 'https://via.placeholder.com/150',
//     },
//     {
//       'title': 'Title 3',
//       'description': 'Description 3',
//       'imageUrl': 'https://via.placeholder.com/150',
//     },
//     {
//       'title': 'Title 4',
//       'description': 'Description 4',
//       'imageUrl':
//           'https://img.freepik.com/free-vector/sticker-template-with-pizza-isolated_1308-62307.jpg',
//     },
//     //iske andr or items add kar sakte
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // 2 columns in a row
//         ),
//         itemCount: drawerData.length, //idhr se boxes ki length barha sakte
//         itemBuilder: (context, index) {
//           String? title = drawerData[index]['title'];
//           String? description = drawerData[index]['description'];
//           String? imageUrl = drawerData[index]['imageUrl'];
//
//           return GridTile(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.network(
//                   imageUrl!,
//                   width: 50.0,
//                   height: 50.0,
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(title!),
//                 Text(description!),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
