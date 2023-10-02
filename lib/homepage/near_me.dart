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

class NearBy {
  final String imagePath;
  final String title;
  final double rating;
  final double price;
  final String time;

  NearBy(
      {required this.imagePath,
      required this.title,
      required this.rating,
      required this.price,
      required this.time});
}

class Recommended {
  final String imagePath;
  final String title;
  final double rating;
  final double price;
  final String time;

  Recommended(
      {required this.imagePath,
      required this.title,
      required this.rating,
      required this.price,
      required this.time});
}

class NearMe extends StatelessWidget {
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
    ExploreItem(
      imagePath: 'assets/icons/ice cream.png',
      title: 'Ice Cream',
      rating: 5.0,
      price: 10.0,
    ),
  ];
  List<NearBy> nearby = [
    NearBy(
      imagePath: 'assets/icons/kolachi.jpg',
      title: 'Kolachi Restaurant',
      rating: 4.2,
      price: 1.99,
      time: '60 mins',
    ),
    NearBy(
      imagePath: 'assets/icons/Xanders.jpg',
      title: 'Xander’s Clifton',
      rating: 4.1,
      price: 2.99,
      time: '10 mins',
    ),
    NearBy(
      imagePath: 'assets/icons/Jardin.jpg',
      title: 'Jardin',
      rating: 4.2,
      price: 3.50,
      time: '5 mins',
    ),
    NearBy(
      imagePath: 'assets/icons/Dynasty.jpg',
      title: 'Dynasty',
      rating: 4.2,
      price: 5.00,
      time: '20 mins',
    ),
    NearBy(
      imagePath: 'assets/icons/ChefsTable.jpg',
      title: 'Chef’s Table',
      rating: 4.2,
      price: 6.25,
      time: '15 mins',
    ),
    NearBy(
      imagePath: 'assets/icons/CafeFlo.jpg',
      title: 'Cafe Flo',
      rating: 4.2,
      price: 1.9,
      time: '25 mins',
    ),
    NearBy(
      imagePath: 'assets/icons/TheEastEnd.jpg',
      title: 'The East End',
      rating: 4.2,
      price: 2.60,
      time: '2 mins',
    ),
    NearBy(
      imagePath: 'assets/icons/lalqila.jpg',
      title: 'LalQila Restaurant',
      rating: 4.2,
      price: 9.90,
      time: '45 mins',
    ),
    NearBy(
      imagePath: 'assets/icons/bbq.jpg',
      title: 'BBQ Tonight',
      rating: 4.2,
      price: 8.00,
      time: '30 mins',
    ),
  ];
  List<Recommended> recommended = [
    Recommended(
      imagePath: 'assets/icons/lotus.jpg',
      title: 'Lotus Court',
      rating: 4.2,
      price: 3.95,
      time: '60 mins',
    ),
    Recommended(
      imagePath: 'assets/icons/marcopolo.jpg',
      title: 'Marcopolo',
      rating: 4.2,
      price: 7.75,
      time: '10 mins',
    ),
    Recommended(
      imagePath: 'assets/icons/bustan.jpg',
      title: 'Al Bustan',
      rating: 4.2,
      price: 0.95,
      time: '5 mins',
    ),
    Recommended(
      imagePath: 'assets/icons/beach.jpg',
      title: 'Beach Luxury Hotel',
      rating: 4.2,
      price: 10.25,
      time: '20 mins',
    ),
    Recommended(
      imagePath: 'assets/icons/boatbasin.jpg',
      title: 'Boat Basin',
      rating: 4.2,
      price: 7.91,
      time: '15 mins',
    ),
    Recommended(
      imagePath: 'assets/icons/tao.jpg',
      title: 'Tao',
      rating: 4.2,
      price: 1.99,
      time: '25 mins',
    ),
  ];
  NearMe({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> itemCountNotifier = ValueNotifier<int>(0);
    return Scaffold(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        appBar: MyAppBar(itemCountNotifier: itemCountNotifier),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(),
              CustomRowWidget(title: 'By Type of Food', onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 145,
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
                              price: item.price,
                              time: '',
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: GestureDetector(
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 50,
                                child: ClipOval(
                                  child: Image.asset(
                                    item.imagePath,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, left: 7),
                                child: Text(
                                  item.price.toString(),
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                  textAlign: TextAlign.center,
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
              const SizedBox(
                height: 10,
              ),
              CustomRowWidget(title: 'Near By Restaurants', onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: nearby.length,
                  itemBuilder: (context, index) {
                    NearBy item = nearby[index];
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewProduct(
                                  imagePath: item.imagePath,
                                  foodName: item.title,
                                  rating: item.rating,
                                  price: item.price,
                                  time: item.time),
                            ),
                          );
                        },
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Column(children: [
                              SizedBox(
                                width: 200,
                                height: 230,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: DecorationImage(
                                            image: AssetImage(item.imagePath),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 14.0),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          item.title,
                                          style: const TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 14.0),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                item.rating.toStringAsFixed(1),
                                                style: const TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              const SizedBox(width: 10.0),
                                              const SizedBox(height: 4.0),
                                              const Text(
                                                "\$",
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                item.price.toStringAsFixed(2),
                                                style: const TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ])));
                  },
                ),
              ),
              CustomRowWidget(title: 'Recommended', onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommended.length,
                  itemBuilder: (context, index) {
                    Recommended item = recommended[index];
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewProduct(
                                  imagePath: item.imagePath,
                                  foodName: item.title,
                                  rating: item.rating,
                                  price: item.price,
                                  time: item.time),
                            ),
                          );
                        },
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Column(children: [
                              SizedBox(
                                width: 200,
                                height: 230,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: DecorationImage(
                                            image: AssetImage(item.imagePath),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 14.0),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          item.title,
                                          style: const TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 14.0),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                item.rating.toStringAsFixed(1),
                                                style: const TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              const SizedBox(width: 10.0),
                                              const SizedBox(height: 4.0),
                                              const Text(
                                                "\$",
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                item.price.toStringAsFixed(2),
                                                style: const TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ])));
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
