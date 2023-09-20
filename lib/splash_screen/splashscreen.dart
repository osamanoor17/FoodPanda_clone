import 'package:flutter/material.dart';

import 'contentpage.dart';

class SplashScreen extends StatefulWidget {
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
        duration: Duration(milliseconds: 300),
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
                    padding: EdgeInsets.only(right: 20, top: 10),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.transparent,
                      ),
                      child: const Text(
                        'Skip',
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
                    padding: EdgeInsets.only(right: 20, top: 10),
                    child: TextButton(
                      onPressed: () {
                        goToNextPage();
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
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
                if (currentIndex == 2)
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: 20, top: 10),
                    child: TextButton(
                      onPressed: () {
                        goToNextPage();
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
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
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: onPageChanged,
                    itemBuilder: (_, i) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 49, top: 20),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(
                                contents[i].image,
                                scale: 0.02,
                                height:
                                    MediaQuery.of(context).size.height * 0.28,
                              ),
                            ),
                            const SizedBox(height: 50),
                            Row(
                              children: [
                                Text(
                                  contents[i].title1,
                                  style: const TextStyle(
                                    fontSize: 16,
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
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  contents[i]
                                      .description, // Use description data here
                                  style: const TextStyle(
                                    fontSize: 16,
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
                  padding: const EdgeInsets.only(bottom: 20, left: 30),
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
            if (currentIndex == 0)
              Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(sidebarImages[0])),
            if (currentIndex == 1)
              Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(sidebarImages[1])),
            if (currentIndex == 2)
              Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(sidebarImages[2])),
            Positioned(
                top: currentIndex == 0
                    ? MediaQuery.of(context).size.height * 0.838
                    : currentIndex == 1
                        ? MediaQuery.of(context).size.height * 0.838
                        : MediaQuery.of(context).size.height * 0.838,
                left: currentIndex == 0
                    ? MediaQuery.of(context).size.width * 0.828
                    : currentIndex == 1
                        ? MediaQuery.of(context).size.width * 0.84
                        : MediaQuery.of(context).size.width * 0.70,
                child: IconButton(
                    onPressed: () {
                      goToNextPage();
                    },
                    icon: currentIndex == 2
                        ? const Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        : const Icon(Icons.arrow_forward, color: Colors.white)))
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? MYcolors[index] : Colors.grey,
      ),
    );
  }
}
