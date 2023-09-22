//
// import 'package:flutter/material.dart';
//
// class FoodItemWidget extends StatelessWidget {
//   final String image;
//   final String foodName;
//   final String foodItem;
//
//   FoodItemWidget({
//     required this.image,
//     required this.foodName,
//     required this.foodItem,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: CircleAvatar(
//             radius: 50,
//             child: ClipOval(
//               child: Image.asset(
//                 image,
//                 fit: BoxFit.scaleDown,
//               ),
//             ),
//           ),
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               foodName,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               foodItem,
//               style: TextStyle(fontSize: 14, color: Colors.grey),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class FoodItemWidget extends StatelessWidget {
  final String image;
  final String foodName;
  final String foodItem;

  FoodItemWidget({
    required this.image,
    required this.foodName,
    required this.foodItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 50,
            child: ClipOval(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              foodName,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, left: 10),
              child: Text(
                foodItem,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
