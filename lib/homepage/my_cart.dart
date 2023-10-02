import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderItem {
  final String name;
  final double price;
  int itemCount;

  OrderItem({
    required this.name,
    required this.price,
    required this.itemCount,
  });
}

class MyOrders extends StatefulWidget {
  
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  List<OrderItem> orderItems = [];
  double total = 0;

  @override
  void initState() {
    super.initState();
    loadOrderData();
  }

  Future<void> loadOrderData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? orderDataString = prefs.getString('orderData');
    if (orderDataString != null) {
      final List<dynamic> orderData = jsonDecode(orderDataString);
      final loadedOrderItems = orderData.map((data) {
        return OrderItem(
          name: data['name'],
          price: data['price'],
          itemCount: data['itemCount'],
        );
      }).toList();
      setState(() {
        orderItems = loadedOrderItems;
        total = calculateTotalPrice();
      });
    }
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var item in orderItems) {
      totalPrice += item.price * item.itemCount;
    }
    return totalPrice;
  }

  Future<void> saveOrderData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<Map<String, dynamic>> orderData = orderItems
        .map((item) => {
              'name': item.name,
              'price': item.price,
              'itemCount': item.itemCount,
            })
        .toList();
    final String orderDataString = jsonEncode(orderData);
    await prefs.setString('orderData', orderDataString);
  }

  void addToCart(OrderItem item) {
    setState(() {
      final existingItemIndex =
          orderItems.indexWhere((element) => element.name == item.name);
      if (existingItemIndex != -1) {
        orderItems[existingItemIndex].itemCount++;
      } else {
        orderItems.add(item);
      }
      total = calculateTotalPrice();
      saveOrderData();
    });
  }

  void removeItem(OrderItem item) {
    setState(() {
      final existingItemIndex =
          orderItems.indexWhere((element) => element.name == item.name);
      if (existingItemIndex != -1) {
        if (orderItems[existingItemIndex].itemCount > 1) {
          orderItems[existingItemIndex].itemCount--;
        } else {
          orderItems.removeAt(existingItemIndex);
        }
      }
      total = calculateTotalPrice();
      saveOrderData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 100),
                  child: Text(
                    "MY Cart",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 240, top: 20),
                  child: Text(
                    "Today",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            orderItems.isNotEmpty
                ? StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return ListView.builder(
                        itemCount: orderItems.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final item = orderItems[index];
                          debugPrint("======---${orderItems[index]}");

                          return Visibility(
                            visible: item.itemCount > 0,
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          item.name,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        '${item.itemCount} item x \$${item.price.toStringAsFixed(2)}',
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    250, 250, 250, 1),
                                            child: IconButton(
                                              onPressed: () {
                                                removeItem(item);
                                              },
                                              icon: const Icon(
                                                Icons.remove,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '${item.itemCount}',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          CircleAvatar(
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    250, 250, 250, 1),
                                            child: IconButton(
                                              onPressed: () {
                                                addToCart(item);
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        '\$${(item.price * item.itemCount).toStringAsFixed(2)}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  )
                : const Center(
                    child: Text(
                      "Cart is Empty",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Total",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "\$0.00",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "\$${total.toStringAsFixed(2)}",
                      style: const TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'homepage');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text(
                "Continue Shopping",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'payment_screen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text(
                "Check Out",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
