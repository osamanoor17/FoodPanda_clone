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
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding: EdgeInsets.only(right: 20, top: 20),
                        alignment: Alignment.bottomRight,
                        // padding: const EdgeInsets.all(35.0),
                        child: const Text('Skip',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ))),
                  ),
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: onPageChanged,
                    itemBuilder: (_, i) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 60,
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
                            const SizedBox(height: 20),
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
                            if (i == 2) const SizedBox(height: 5),
                            if (i == 2)
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'welcome');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                ),
                                child: const Text(
                                  'Get Started',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
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
                // Container(
                //   height: 3,
                //   margin: const EdgeInsets.all(40),
                //   width: double.infinity,
                //   color: MYcolors[currentIndex],
                // ),
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
                    ? MediaQuery.of(context).size.height * 0.875
                    : currentIndex == 1
                        ? MediaQuery.of(context).size.height * 0.845
                        : MediaQuery.of(context).size.height * 0.846,
                left: currentIndex == 0
                    ? MediaQuery.of(context).size.width * 0.79
                    : currentIndex == 1
                        ? MediaQuery.of(context).size.width * 0.79
                        : MediaQuery.of(context).size.width * 0.72,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward, color: Colors.white)))
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
