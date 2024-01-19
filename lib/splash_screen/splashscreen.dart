import 'package:ecommerce_clone/responsive.dart';
import 'package:flutter/material.dart';
import 'contentpage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Color> MYcolors = [Colors.red, Colors.purple, Colors.orange];

  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void goToNextPage() {
    if (currentIndex < 2) {
      _controller.animateToPage(
        currentIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushNamed(context, 'welcome');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                if (currentIndex == 0)
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(
                      right: ScreenSize.blockSizeHorizontal(context, 2),
                      top: 0,
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.grey,
                        backgroundColor: Colors.transparent,
                      ),
                      child: const Text(
                        '',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                if (currentIndex == 1)
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(
                      right: ScreenSize.blockSizeHorizontal(context, 2),
                      top: ScreenSize.blockSizeVertical(context, 1),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // goToNextPage();
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.transparent,
                      ),
                      child: const Text(
                        '',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                if (currentIndex == 2)
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(
                      right: ScreenSize.blockSizeHorizontal(context, 2),
                      top: ScreenSize.blockSizeVertical(context, 1),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // goToNextPage();
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.transparent,
                      ),
                      child: const Text(
                        '',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: onPageChanged,
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: ScreenSize.blockSizeHorizontal(context, 3),
                          right: ScreenSize.blockSizeHorizontal(context, 3),
                          top: ScreenSize.blockSizeVertical(context, 2),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.only(
                                top: ScreenSize.blockSizeVertical(context, 1),
                                left: ScreenSize.blockSizeHorizontal(context, 1),
                                right: ScreenSize.blockSizeHorizontal(context, 1),
                                bottom: ScreenSize.blockSizeVertical(context, 1),
                              ),
                              child: Image.asset(
                                contents[i].image,
                                height: ScreenSize.blockSizeVertical(context, 40),
                              ),
                            ),
                            SizedBox(
                              height: ScreenSize.blockSizeVertical(context, 6),
                            ),
                            Row(
                              children: [
                                Text(
                                  contents[i].title1,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  contents[i].title2,
                                  style: const TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  contents[i].description,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                                        },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: ScreenSize.blockSizeVertical(context, 2),
                  left: ScreenSize.blockSizeHorizontal(context, 3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    contents.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
            ],
          ),
          // if (currentIndex == 0)
          //   Align(
          //     alignment: Alignment.centerRight,
          //     child: Image.asset(sidebarImages[0]),
          //   ),
          // if (currentIndex == 1)
          //   Align(
          //     alignment: Alignment.bottomRight,
          //     child: Image.asset(sidebarImages[1]),
          //   ),
          // if (currentIndex == 2)
          //   Align(
          //     alignment: Alignment.bottomRight,
          //     child: Image.asset(sidebarImages[2]),
          //   ),
Positioned(
            top: currentIndex == 0
                ? ScreenSize.blockSizeVertical(context, 84.7)
                : currentIndex == 1
                    ? ScreenSize.blockSizeVertical(context, 84.7)
                    : ScreenSize.blockSizeVertical(context, 84.7),
            left: currentIndex == 0
                ? ScreenSize.blockSizeHorizontal(context, 82.1)
                : currentIndex == 1
                    ? ScreenSize.blockSizeHorizontal(context, 81.0)
                    : ScreenSize.blockSizeHorizontal(context, 70.0),
            child: IconButton(
              onPressed: () {
                goToNextPage();
              },
              icon: currentIndex == 2
                  ? const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  : const Icon(Icons.arrow_forward, color: Colors.black,size: 25,),
            ),
          ),
      ],
      ),
    ),
  );
}

Container buildDot(int index, BuildContext context) {
  return Container(
    height: 8,
    width: currentIndex == index
        ? ScreenSize.blockSizeHorizontal(context, 2.5)
        : ScreenSize.blockSizeHorizontal(context, 1),
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: currentIndex == index ? MYcolors[index] : Colors.grey,
    ),
  );
}

}          