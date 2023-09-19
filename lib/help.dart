// import 'package:ecommerce_clone/splash_screen/contentpage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SideBar extends StatefulWidget {
//   const SideBar({Key? key}) : super(key: key);
//
//   @override
//   State<SideBar> createState() => _SideBarState();
// }
//
// class _SideBarState extends State<SideBar> {
//   final PageController _pageController = PageController(initialPage: 0);
//
//   final List<String> sidebarImages = [
//     'assets/icons/sidebar_red.png',
//     'assets/icons/sidebar_purple.png',
//     'assets/icons/sidebar_orange.png',
//   ];
//
//   final List<String> colorImages = [
//     'assets/icons/icon1.png',
//     'assets/icons/icon2.png',
//     'assets/icons/icon3.png',
//   ];
//
//   final List<double> sidebarIconScales = [0.8, 0.5, 0.7];
//   final List<String?> sidebarTexts = [null, null, 'Get Started'];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView.builder(
//         controller: _pageController,
//         itemCount: sidebarImages.length,
//         itemBuilder: (context, index) {
//           return _buildPage(
//             imagePath: sidebarImages[index],
//             iconScale: sidebarIconScales[index],
//             text: sidebarTexts[index],
//             rotateIcon: index == 0 || index == 1,
//             iconPosition: _getIconPosition(index),
//             imageForContent: colorImages[index], // Pass the content image path
//           );
//         },
//       ),
//     );
//   }
//
//   Offset _getIconPosition(int index) {
//     if (index == 0) {
//       return const Offset(20, 710); // Position for sidebar_red
//     } else if (index == 1) {
//       return const Offset(20, 690); // Position for sidebar_purple
//     } else {
//       return const Offset(17, 30); // Position of sidebar_orange
//     }
//   }
//
//   Widget _buildPage({
//     required String imagePath, // Existing parameter
//     required String imageForContent, // New parameter for the content image path
//     required double iconScale,
//     String? text,
//     bool rotateIcon = false,
//     required Offset iconPosition,
//   }) {
//     return GestureDetector(
//       onHorizontalDragEnd: (details) {
//         if (details.primaryVelocity! < 0) {
//           _pageController.nextPage(
//             duration: const Duration(seconds: 1),
//             curve: Curves.easeInOut,
//           );
//         } else if (details.primaryVelocity! > 0) {
//           _pageController.previousPage(
//             duration: const Duration(seconds: 1),
//             curve: Curves.easeInOut,
//           );
//         }
//       },
//       child: Transform(
//         transform: Matrix4.identity()
//           ..setEntry(3, 2, 0.002)
//           ..rotateY(rotateIcon ? 0.02 : 0.0),
//         alignment: FractionalOffset.center,
//         child: Stack(
//           children: [
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     Image.asset(
//                       imagePath, // Use the sidebar image path here
//                       scale: iconScale,
//                     ),
//                     if (rotateIcon)
//                       Positioned(
//                         right: iconPosition.dx,
//                         top: iconPosition.dy,
//                         child: const Icon(
//                           CupertinoIcons.arrow_right,
//                           color: Colors.white,
//                           size: 40.0,
//                         ),
//                       ),
//                     if (text != null)
//                       Positioned(
//                         bottom: 43,
//                         right: 17,
//                         child: TextButton(
//                           child: Text(
//                             text,
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 16.0,
//                             ),
//                           ),
//                           onPressed: () {},
//                         ),
//                       ),
//                   ],
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
