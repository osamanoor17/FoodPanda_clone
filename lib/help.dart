// import 'package:flutter/material.dart';
//
// class CustomFoodContainer extends StatelessWidget {
//   final String imagePath;
//   final String foodName;
//   final double rating;
//
//   CustomFoodContainer({
//     required this.imagePath,
//     required this.foodName,
//     required this.rating,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: double.infinity,
//             height: 150.0,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               image: DecorationImage(
//                 image: AssetImage(imagePath),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(height: 16.0),
//           Text(
//             foodName,
//             style: TextStyle(
//               fontSize: 18.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 8.0),
//           Row(
//             children: [
//               Icon(
//                 Icons.star,
//                 size: 16.0,
//                 color: Colors.orange,
//               ),
//               SizedBox(width: 4.0),
//               Text(
//                 rating.toStringAsFixed(1),
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Custom Food Container Example'),
//       ),
//       body: Center(
//         child: CustomFoodContainer(
//           imagePath: 'assets/icons/icon1.png',
//           foodName: 'Delicious Pizza',
//           rating: 4.5,
//         ),
//       ),
//     ),
//   ));
// }
