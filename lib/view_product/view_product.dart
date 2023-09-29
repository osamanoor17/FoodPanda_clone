import 'package:flutter/material.dart';

import '../customRatings/customRatings.dart';
import '../reviews/reviews.dart';

class Product {
  final String name;
  double price;
  int itemCount;

  Product({
    required this.name,
    required this.price,
    required this.itemCount,
  });
}

class ViewProduct extends StatefulWidget {
  const ViewProduct({Key? key}) : super(key: key);

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  List<Product> products = [
    Product(name: 'Biryani', price: 7.99, itemCount: 1),
  ];

  List<String> img = [
    'assets/icons/biryani1.png',
  ];
  void _showAddToCartBottomSheet(BuildContext context, product) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            double total = 0.0;
            for (var product in products) {
              total += product.price * product.itemCount;
            }
            List<Product> selectedItems =
                products.where((product) => product.itemCount > 0).toList();
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Positioned(
                        top: 5,
                        right: 20,
                        child: Container(
                          height: 40,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 240.0,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'Add to Cart',
                                          style: TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: products.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      Product product = products[index];
                                      return Column(
                                        children: [
                                          ListTile(
                                            title: Text(
                                              "${product.name} (\$${product.price.toStringAsFixed(2)})",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            trailing: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                if (product.itemCount > 1)
                                                  IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (product.itemCount >
                                                            1) {
                                                          product.itemCount--;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      Icons.remove,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                Text(
                                                  '${product.itemCount}',
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      product.itemCount++;
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons.add,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(),
                                        ],
                                      );
                                    },
                                  ),
                                  const SizedBox(height: 20.0),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Pass selectedItems as route arguments
                                        Navigator.pushNamed(context, 'myorders',
                                            arguments: selectedItems);

                                        print(
                                            "Selected Items: ${selectedItems.length}");
                                        double total = 0.0;
                                        for (var item in selectedItems) {
                                          total += item.price * item.itemCount;
                                        }
                                        print(
                                            "Total Price: \$${total.toStringAsFixed(2)}");
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(
                                            119, 84, 204, 1),
                                      ),
                                      child: const Text(
                                        "Add to Order",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  void updateItemCount(Product product, int itemCount) {
    setState(() {
      product.itemCount = itemCount;
    });
  }

  String selectedquantitysize = 'full';

  Widget customRadioButton(
      String value, String title, String serving, String money) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedquantitysize = value;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selectedquantitysize == value
                      ? Colors.green
                      : Colors.grey,
                ),
                child: selectedquantitysize == value
                    ? const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 16.0,
                      )
                    : null,
              ),
              const SizedBox(width: 12.0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  height: 2.0,
                ),
              ),
              const SizedBox(width: 5.0),
              Text(
                serving,
                style: const TextStyle(
                  fontSize: 14.0,
                  height: 2.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              money,
              style: const TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        flexibleSpace: SizedBox(
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.all(16),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                    height: 120,
                    width: 300,
                    child: Image.asset(
                      img[0],
                      fit: BoxFit.fill,
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            PreferredSize(
              preferredSize: const Size.fromHeight(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'fav_screen');
                      },
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Container(
                    height: 45,
                    margin: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _showAddToCartBottomSheet(context, products);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 10.0),
                          Text(
                            "Add to Cart",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Icon(
                            Icons.shopping_cart,
                            color: Color.fromRGBO(119, 84, 204, 1),
                          ),
                          SizedBox(width: 5.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Biryani",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 170),
                  child: Text(
                    "\$7.99",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                ),
                const Text(
                  "4.8",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  "60 mins",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  "Free Delivery",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Select Quantity",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child:
                  customRadioButton('full', 'Full', '(3-5 persons)', '\$7.99'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 7),
              child: customRadioButton(
                  'medium', 'Medium', '(2-3 persons)', '\$4.99'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child:
                  customRadioButton('small', 'Small', '(1 person)', '\$1.99'),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "Reviews",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
                height: 175,
                width: 350,
                child: CustomReviews(
                  imageperson: 'assets/icons/person_f.png',
                  title: 'Jennifer',
                  user: 'Verified User',
                  rating: 4.8,
                  timeduration: '30 mins ago',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel odio vitae ex fringilla facilisis. Sed ultricies quam in tristique vulputate. Fusce interdum nunc vel laoreet sollicitudin. Nullam dapibus leo vel odio malesuada, eget tincidunt odio dictum.',
                  MYcolor: Colors.greenAccent,
                )),
            const Divider(),
            SizedBox(
                height: 130,
                width: 350,
                child: CustomReviews(
                    imageperson: 'assets/icons/person_f.png',
                    title: 'Doris D',
                    user: 'Verified User',
                    rating: 4.1,
                    timeduration: '30 mins ago',
                    description:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    MYcolor: Colors.greenAccent)),
            const Divider(),
            SizedBox(
                height: 130,
                width: 350,
                child: CustomReviews(
                  imageperson: 'assets/icons/person.png',
                  title: 'Irene Doe',
                  user: 'Verified User',
                  rating: 2.9,
                  timeduration: '30 mins ago',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  MYcolor: Colors.redAccent,
                )),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "Your Review",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const StarRating(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "Add your review in detail",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
