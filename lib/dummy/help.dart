// import 'package:flutter/material.dart';
//
// class ViewProductPage extends StatefulWidget {
//   final String imagePath;
//   final String foodName;
//   final double rating;
//
//   ViewProductPage({
//     required this.imagePath,
//     required this.foodName,
//     required this.rating,
//   });
//
//   @override
//   State<ViewProductPage> createState() => _ViewProductPageState();
// }
//
// class _ViewProductPageState extends State<ViewProductPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 20.0,
//             ),
//             Container(
//               width: 200,
//               height: 60,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15.0),
//                 image: DecorationImage(
//                   image: AssetImage(widget.imagePath),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               widget.foodName,
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.star,
//                   size: 24.0,
//                   color: Colors.orange,
//                 ),
//                 SizedBox(width: 8.0),
//                 Text(
//                   widget.rating.toStringAsFixed(1),
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20.0),
//           ],
//         ),
//       ),
//     );
//   }
// }
