import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../customContainer/Container.dart';
import '../customTextfield/textfield.dart';
import '../custom_row/custom_row.dart';
import '../customdrawer/drawer.dart';
import '../customfoodbar/customfoodbar.dart';

class NearMe extends StatelessWidget {
  const NearMe({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> itemCountNotifier = ValueNotifier<int>(0);
    return Scaffold(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        appBar: MyAppBar(itemCountNotifier: itemCountNotifier),
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              CustomTextField(),
              CustomRowWidget(title: 'By Type of Food', onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    FoodItemWidget(
                      image: "assets/icons/burger1.png",
                      foodName: 'Burgers',
                      foodItem: '(12)',
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    FoodItemWidget(
                      image: "assets/icons/pizza.png",
                      foodName: 'Pizzas',
                      foodItem: '(5)',
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    FoodItemWidget(
                      image: "assets/icons/soups.png",
                      foodName: 'Soups',
                      foodItem: '(10)',
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    FoodItemWidget(
                      image: "assets/icons/sandwich1.png",
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
              CustomRowWidget(title: 'Near By Restaurants', onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 275,
                width: 550,
                padding: const EdgeInsets.only(bottom: 8.0, left: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/kolachi.jpg',
                          foodName: 'Kolachi Restaurant',
                          rating: 4.2,
                          onTap: () {},
                          time: '60 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/Xanders.jpg',
                          foodName: 'Xander’s Clifton',
                          rating: 4.1,
                          onTap: () {},
                          time: '10 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/Jardin.jpg',
                          foodName: 'Jardin',
                          rating: 4.2,
                          onTap: () {},
                          time: '5 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/Dynasty.jpg',
                          foodName: 'Dynasty',
                          rating: 4.2,
                          onTap: () {},
                          time: '20 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/ChefsTable.jpg',
                          foodName: 'Chef’s Table',
                          rating: 4.2,
                          onTap: () {},
                          time: '15 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/CafeFlo.jpg',
                          foodName: 'Cafe Flo',
                          rating: 4.2,
                          onTap: () {},
                          time: '25 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/TheEastEnd.jpg',
                          foodName: 'The East End',
                          rating: 4.2,
                          onTap: () {},
                          time: '2 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/lalqila.jpg',
                          foodName: 'LalQila Restaurant',
                          rating: 4.2,
                          onTap: () {},
                          time: '45 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/bbq.jpg',
                          foodName: 'BBQ Tonight',
                          rating: 4.2,
                          onTap: () {},
                          time: '30 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ),
              CustomRowWidget(title: 'Recommended', onPressed: () {}),
              Container(
                height: 275,
                width: 550,
                padding: const EdgeInsets.only(bottom: 8.0, left: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/lotus.jpg',
                          foodName: 'Lotus Court',
                          rating: 4.2,
                          onTap: () {},
                          time: '60 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/marcopolo.jpg',
                          foodName: 'Marcopolo',
                          rating: 4.1,
                          onTap: () {},
                          time: '10 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/bustan.jpg',
                          foodName: 'Al Bustan',
                          rating: 4.2,
                          onTap: () {},
                          time: '5 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/beach.jpg',
                          foodName: 'Beach Luxury Hotel',
                          rating: 4.2,
                          onTap: () {},
                          time: '20 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/boatbasin.jpg',
                          foodName: 'Boat Basin ',
                          rating: 4.2,
                          onTap: () {},
                          time: '15 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        height: 230,
                        width: 200,
                        child: CustomFoodContainer(
                          imagePath: 'assets/icons/tao.jpg',
                          foodName: 'Tao',
                          rating: 4.2,
                          onTap: () {},
                          time: '25 mins',
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
