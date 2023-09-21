import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../customTextfield/textfield.dart';
import '../customdrawer/drawer.dart';

class Explore extends StatefulWidget {
  Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<String> images = [
    'assets/icons/biryani.png',
    'assets/icons/burger.png',
    'assets/icons/sandwich.png',
    'assets/icons/pizza.png',
  ];

  List<Color> backgroundColors = [
    Colors.blueGrey,
    Colors.orange,
    Colors.green,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            child: CarouselSlider(
              items: images.asMap().entries.map((entry) {
                int index = entry.key;
                String imagePath = entry.value;

                Color backgroundColor = backgroundColors[index];
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: backgroundColor,
                    ),
                    margin: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Image.asset(imagePath),
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 140.0,
                enlargeCenterPage: true,
                autoPlay: true,
                enableInfiniteScroll: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
              ),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 32.0, top: 5),
                child: Text(
                  "Today's Trending",
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 32.0, top: 10),
                child: Text(
                  "Hot & Spicy",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 100),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View all",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
