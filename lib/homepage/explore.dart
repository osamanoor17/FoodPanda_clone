import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../customTextfield/textfield.dart';
import '../custom_row/custom_row.dart';
import '../customdrawer/drawer.dart';
import '../view_product/view_product.dart';

class ExploreItem {
  final String imagePath;
  final String title;
  final double rating;
  final double price;

  ExploreItem(
      {required this.imagePath,
      required this.title,
      required this.rating,
      required this.price});
}

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  // Define your data
  List<ExploreItem> exploreItems = [
    ExploreItem(
      imagePath: 'assets/icons/biryani1.png',
      title: 'Biryani',
      rating: 4.5,
      price: 7.99,
    ),
    ExploreItem(
      imagePath: 'assets/icons/pizza.png',
      title: 'Pizza',
      rating: 4.1,
      price: 4.99,
    ),
    ExploreItem(
      imagePath: 'assets/icons/burger1.png',
      title: 'Burger',
      rating: 4.2,
      price: 5.00,
    ),
    ExploreItem(
      imagePath: 'assets/icons/sandwich1.png',
      title: 'Sandwich',
      rating: 4.2,
      price: 2.99,
    ),
  ];

  List<String> images = [
    'assets/icons/biryani1.png',
    'assets/icons/burger1.png',
    'assets/icons/sandwich1.png',
    'assets/icons/pizza.png',
  ];
  List<Color> backgroundColors = [
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
  ];
  ValueNotifier<int> itemCountNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: MyAppBar(itemCountNotifier: itemCountNotifier),
      drawer: const CustomDrawer(),
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
                autoPlayInterval: const Duration(seconds: 3),
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
            const CustomTextField(),
            CustomRowWidget(
              title: 'Hot & Spicy',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
              height: 300, // Set a fixed height
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: exploreItems.length,
                itemBuilder: (context, index) {
                  ExploreItem item = exploreItems[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewProduct(
                              imagePath: item.imagePath,
                              foodName: item.title,
                              rating: item.rating,
                              price: item.price),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(250, 250, 250, 1),
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage(item.imagePath),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(height: 14.0),
                          Text(
                            item.title,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 14.0),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 16.0,
                                color: Colors.orange,
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                item.rating.toStringAsFixed(1),
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$",
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.black),
                              ),
                              Text(
                                item.price.toStringAsFixed(2),
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              const SizedBox(height: 4.0),
                              const Text(
                                '',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(
              height: 5,
            ),
            CustomRowWidget(
              title: 'All Cuisines',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            // Container(
            //   height: 275,
            //   width: 550,
            //   padding: const EdgeInsets.only(bottom: 8.0, left: 15),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         const SizedBox(
            //           width: 15,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Pakistani.png',
            //             foodName: 'Pakistani',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '60 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Chinese.jpg',
            //             foodName: 'Chinese',
            //             rating: 4.1,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '10 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Japanese.jpg',
            //             foodName: 'Japanese',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '5 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Italian.jpg',
            //             foodName: 'Italian',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '20 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Greek.jpg',
            //             foodName: 'Greek',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '15 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Spanish.jpg',
            //             foodName: 'Spanish',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '25 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Turkish.png',
            //             foodName: 'Turkish',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '2 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Thai.png',
            //             foodName: 'Thai',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '45 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Indian.png',
            //             foodName: 'Indian',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '30 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            CustomRowWidget(
              title: 'By Type of Food',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       const SizedBox(
            //         width: 25,
            //       ),
            //       FoodItemWidget(
            //         image: "assets/icons/burger1.png",
            //         foodName: 'Burgers',
            //         foodItem: '(12)',
            //         onTap: () {
            //           Navigator.pushNamed(context, 'view_product');
            //         },
            //       ),
            //       const SizedBox(
            //         width: 5,
            //       ),
            //       FoodItemWidget(
            //         image: "assets/icons/pizza.png",
            //         foodName: 'Pizzas',
            //         foodItem: '(5)',
            //         onTap: () {
            //           Navigator.pushNamed(context, 'view_product');
            //         },
            //       ),
            //       const SizedBox(
            //         width: 5,
            //       ),
            //       FoodItemWidget(
            //         image: "assets/icons/soups.png",
            //         foodName: 'Soups',
            //         foodItem: '(10)',
            //         onTap: () {
            //           Navigator.pushNamed(context, 'view_product');
            //         },
            //       ),
            //       const SizedBox(
            //         width: 5,
            //       ),
            //       FoodItemWidget(
            //         image: "assets/icons/sandwich1.png",
            //         foodName: 'Sandwich',
            //         foodItem: '(10)',
            //         onTap: () {
            //           Navigator.pushNamed(context, 'view_product');
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            CustomRowWidget(title: 'Near By Restaurants', onPressed: () {}),
            // Container(
            //   height: 275,
            //   width: 550,
            //   padding: const EdgeInsets.only(bottom: 8.0, left: 15),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         const SizedBox(
            //           width: 15,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/kolachi.jpg',
            //             foodName: 'Kolachi Restaurant',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '60 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Xanders.jpg',
            //             foodName: 'Xander’s Clifton',
            //             rating: 4.1,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '10 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Jardin.jpg',
            //             foodName: 'Jardin',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '5 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/Dynasty.jpg',
            //             foodName: 'Dynasty',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '20 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/ChefsTable.jpg',
            //             foodName: 'Chef’s Table',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '15 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/CafeFlo.jpg',
            //             foodName: 'Cafe Flo',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '25 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/TheEastEnd.jpg',
            //             foodName: 'The East End',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '2 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/lalqila.jpg',
            //             foodName: 'LalQila Restaurant',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '45 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //         SizedBox(
            //           height: 230,
            //           width: 200,
            //           child: CustomFoodContainer(
            //             imagePath: 'assets/icons/bbq.jpg',
            //             foodName: 'BBQ Tonight',
            //             rating: 4.2,
            //             onTap: () {
            //               Navigator.pushNamed(context, 'view_product');
            //             },
            //             time: '30 mins',
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 25,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
