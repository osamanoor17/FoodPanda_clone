import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<FoodItem> favoriteFoods = [
    FoodItem(name: "Pizza", isFavorite: true),
    FoodItem(name: "Burger", isFavorite: false),
    FoodItem(name: "Sushi", isFavorite: false),
    FoodItem(name: "Pasta", isFavorite: true),
    FoodItem(name: "Tacos", isFavorite: false),
    FoodItem(name: "Steak", isFavorite: false),
    FoodItem(name: "Chicken Alfredo", isFavorite: false),
    FoodItem(name: "Salad", isFavorite: false),
    FoodItem(name: "Ice Cream", isFavorite: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        title: const Text("Favorites"),
      ),
      body: favoriteFoods.isEmpty
          ? const Center(
              child: Text("You have no favorite items."),
            )
          : ListView.separated(
              itemCount: favoriteFoods.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final foodItem = favoriteFoods[index];
                return Column(
                  children: [
                    ListTile(
                      title: Text(foodItem.name),
                      trailing: IconButton(
                        icon: Icon(
                          foodItem.isFavorite ? Icons.star : Icons.star_border,
                          color: Colors.yellow,
                        ),
                        onPressed: () {
                          setState(() {
                            foodItem.isFavorite = !foodItem.isFavorite;
                          });
                        },
                      ),
                    ),
                    if (index == favoriteFoods.length - 1) const Divider(),
                  ],
                );
              },
            ),
    );
  }
}

class FoodItem {
  final String name;
  bool isFavorite;

  FoodItem({required this.name, required this.isFavorite});
}
