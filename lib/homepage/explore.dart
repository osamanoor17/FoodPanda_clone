import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../customContainer/Container.dart';
import '../customTextfield/textfield.dart';
import '../customdrawer/drawer.dart';
import '../customfoodbar/customfoodbar.dart';

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
    'assets/icons/pizza1.png',
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
      backgroundColor: Colors.black12,
      appBar: MyAppBar(),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: images.asMap().entries.map((entry) {
                int index = entry.key;
                String imagePath = entry.value;

                Color backgroundColor = backgroundColors[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'homepage');
                  },
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
                  padding: const EdgeInsets.only(top: 10, left: 125),
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
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
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 215,
              padding: const EdgeInsets.only(bottom: 8.0, left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 200,
                      height: 190,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/biryani.png',
                        foodName: 'Biryani',
                        rating: 4.5,
                        onTap: () {},
                        time: '',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 200,
                      height: 190,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/pizza.png',
                        foodName: 'Pizza',
                        rating: 4.1,
                        onTap: () {},
                        time: '',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 200,
                      height: 190,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/burger.png',
                        foodName: 'Burger',
                        rating: 4.2,
                        onTap: () {},
                        time: '',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 200,
                      height: 190,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/sandwich.png',
                        foodName: 'Sandwich',
                        rating: 4.2,
                        onTap: () {},
                        time: '',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 32.0, top: 10),
                  child: Text(
                    "All Cuisines",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 123),
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
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
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 220,
              width: 500,
              padding: const EdgeInsets.only(bottom: 8.0, left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/Pakistani.png',
                        foodName: 'Pakistani',
                        rating: 4.2,
                        onTap: () {},
                        time: '60 mins',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/Chinese.jpg',
                        foodName: 'Chinese',
                        rating: 4.1,
                        onTap: () {},
                        time: '10 mins',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/Japanese.jpg',
                        foodName: 'Japanese',
                        rating: 4.2,
                        onTap: () {},
                        time: '5 mins',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/Italian.jpg',
                        foodName: 'Italian',
                        rating: 4.2,
                        onTap: () {},
                        time: '20 mins',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/Greek.jpg',
                        foodName: 'Greek',
                        rating: 4.2,
                        onTap: () {},
                        time: '15 mins',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/Spanish.jpg',
                        foodName: 'Spanish',
                        rating: 4.2,
                        onTap: () {},
                        time: '25 mins',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/Turkish.png',
                        foodName: 'Turkish',
                        rating: 4.2,
                        onTap: () {},
                        time: '2 mins',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/Thai.png',
                        foodName: 'Thai',
                        rating: 4.2,
                        onTap: () {},
                        time: '45 mins',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CustomFoodContainer(
                        imagePath: 'assets/icons/Indian.png',
                        foodName: 'Indian',
                        rating: 4.2,
                        onTap: () {},
                        time: '30 mins',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 32.0, top: 10),
                  child: Text(
                    "By Type of Food",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 85),
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
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
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  FoodItemWidget(
                    image: "assets/icons/burger.png",
                    foodName: 'Burgers',
                    foodItem: '(12)',
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FoodItemWidget(
                    image: "assets/icons/pizza.png",
                    foodName: 'Pizzas',
                    foodItem: '(5)',
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FoodItemWidget(
                    image: "assets/icons/soups.png",
                    foodName: 'Soups',
                    foodItem: '(10)',
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FoodItemWidget(
                    image: "assets/icons/sandwich.png",
                    foodName: 'Sandwich',
                    foodItem: '(10)',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
