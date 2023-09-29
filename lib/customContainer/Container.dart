// import 'package:flutter/material.dart';
//
// class CustomFoodContainer extends StatelessWidget {
//   final String imagePath;
//   final String foodName;
//   final double rating;
//   final String time;
//   final Function() onTap;
//
//   const CustomFoodContainer({
//     super.key,
//     required this.imagePath,
//     required this.foodName,
//     required this.rating,
//     required this.onTap,
//     required this.time,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.all(12.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15.0),
//           color: Colors.white,
//           boxShadow: const [
//             BoxShadow(
//               color: Color.fromRGBO(250, 250, 250, 1),
//               spreadRadius: 2,
//               blurRadius: 2,
//               offset: Offset(0, 0),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: double.infinity,
//               height: 120.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 image: DecorationImage(
//                   image: AssetImage(imagePath),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 14.0),
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Text(
//                 foodName,
//                 style: const TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 14.0),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     const Icon(
//                       Icons.star,
//                       size: 16.0,
//                       color: Colors.orange,
//                     ),
//                     const SizedBox(width: 4.0),
//                     Text(
//                       rating.toStringAsFixed(1),
//                       style: const TextStyle(
//                         fontSize: 16.0,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     const SizedBox(width: 10.0),
//                     const SizedBox(height: 4.0),
//                     Text(
//                       time,
//                       style: const TextStyle(
//                         fontSize: 16.0,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomFoodContainer extends StatelessWidget {
  final String imagePath;
  final String foodName;
  final double rating;
  final String time;
  final VoidCallback onTap;

  CustomFoodContainer({
    required this.imagePath,
    required this.foodName,
    required this.rating,
    required this.time,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(250, 250, 250, 1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 14.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                foodName,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 14.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 16.0,
                      color: Colors.orange,
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      rating.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    const SizedBox(height: 4.0),
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
