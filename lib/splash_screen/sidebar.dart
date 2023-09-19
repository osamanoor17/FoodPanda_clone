// import 'package:flutter/material.dart';
//
// import 'contentpage.dart';
//
// class Onbording extends StatefulWidget {
//   @override
//   _OnbordingState createState() => _OnbordingState();
// }
//
// class _OnbordingState extends State<Onbording> {
//   int currentIndex = 0;
//   late PageController _controller;
//
//   @override
//   void initState() {
//     _controller = PageController(initialPage: 0);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Expanded(
//               child: PageView.builder(
//                 controller: _controller,
//                 itemCount: contents.length,
//                 onPageChanged: (int index) {
//                   setState(() {
//                     currentIndex = index;
//                   });
//                 },
//                 itemBuilder: (_, i) {
//                   return Padding(
//                     padding: const EdgeInsets.all(40),
//                     child: Column(
//                       children: [
//                         Stack(
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Stack(
//                                   alignment: Alignment.center,
//                                   children: [
//                                     Image.asset(
//                                       contents[i].sidebarImages,
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Image.asset(
//                             contents[i].image,
//                             scale: 0.02,
//                             height: 300,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 60,
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               contents[i].title1,
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               contents[i].title2,
//                               style: TextStyle(
//                                 fontSize: 35,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 20),
//                         Row(
//                           children: [
//                             Text(
//                               contents[i].discription,
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black54,
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(
//                   contents.length,
//                   (index) => buildDot(index, context),
//                 ),
//               ),
//             ),
//             Container(
//               height: 20,
//               margin: EdgeInsets.all(40),
//               width: double.infinity,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Container buildDot(int index, BuildContext context) {
//     return Container(
//       height: 10,
//       width: currentIndex == index ? 25 : 10,
//       margin: EdgeInsets.only(right: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Theme.of(context).primaryColor,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'contentpage.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount:
                    contents.length, // Replace 'contents' with your data source
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // Stack(
                                //   alignment: Alignment.centerRight,
                                //   children: [
                                //     Image.asset(
                                //       contents[i]
                                //           .sidebarImages, // Use sidebar image path here
                                //     ),
                                //   ],
                                // ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            contents[i].image, // Use content image path here
                            scale: 0.02,
                            height: 300,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: [
                            Text(
                              contents[i].title1, // Use title data here
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              contents[i].title2, // Use title data here
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              contents[i]
                                  .discription, // Use description data here
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
            Container(
              height: 20,
              margin: EdgeInsets.all(40),
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
