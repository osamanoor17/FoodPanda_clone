// import 'package:flutter/material.dart';
//
// class ContentPage extends StatelessWidget {
//   final String image;
//   final String text;
//   ContentPage({Key? key, required this.text, required this.image})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 35.0, right: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 OutlinedButton(
//                   onPressed: () {},
//                   style: OutlinedButton.styleFrom(
//                     side: const BorderSide(
//                       color: Colors.transparent,
//                     ),
//                   ),
//                   child: Text(
//                     "",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 75,
//           ),
//           Container(
//             height: 200,
//             child: Image.asset(
//               image,
//               scale: 0.01,
//             ),
//           ),
//           SizedBox(
//             height: 90,
//           ),
//           Column(
//             children: [
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(text),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(text),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(text),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(text),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

final List<String> sidebarImages = [
  'assets/icons/sidebar_red.png',
  'assets/icons/sidebar_purple.png',
  'assets/icons/sidebar_orange.png',
];

class UnbordingContent {
  String image;
  String title1;
  String title2;
  String sidebarImages;
  String discription;

  UnbordingContent(
      {required this.image,
      required this.title1,
      required this.sidebarImages,
      required this.discription,
      required this.title2});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title1: 'CHOOSE YOUR FAVOURITE',
      title2: 'RESTAURANTS',
      image: 'assets/icons/icon1.png',
      sidebarImages: "assets/icons/sidebar_red.png",
      discription: "Lorem ipsum dolor sit amet.\n"
          "Nam aspernatur repellendus ut velit "),
  UnbordingContent(
      title1: 'CUSTOMIZE YOUR',
      title2: 'FOOD SEARCH',
      image: 'assets/icons/icon2.png',
      sidebarImages: "assets/icons/sidebar_purple.png",
      discription: "Lorem ipsum dolor sit amet.\n"
          "Nam aspernatur repellendus ut velit "),
  UnbordingContent(
      title1: 'FRESH & FAST',
      title2: 'DELIVERY',
      image: 'assets/icons/icon3.png',
      sidebarImages: "assets/icons/sidebar_orange.png",
      discription: "Lorem ipsum dolor sit amet.\n"
          "Nam aspernatur repellendus ut velit "),
];
