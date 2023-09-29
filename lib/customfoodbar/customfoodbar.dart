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
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: CircleAvatar(
//             backgroundColor: Colors.white,
//             radius: 50,
//             child: ClipOval(
//               child: Image.asset(
//                 image,
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               foodName,
//               style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 2.0, left: 7),
//               child: Text(
//                 foodItem,
//                 style: TextStyle(fontSize: 14, color: Colors.grey),
//                 textAlign: TextAlign.center,
//               ),
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
  final VoidCallback? onTap;

  const FoodItemWidget({
    super.key,
    required this.image,
    required this.foodName,
    required this.foodItem,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 50,
              child: ClipOval(
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              foodName,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, left: 7),
              child: Text(
                foodItem,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
