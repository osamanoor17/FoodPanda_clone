import 'package:ecommerce_clone/view_product/product_appbar.dart';
import 'package:flutter/material.dart';

import '../reviews/reviews.dart';

class ViewProduct extends StatefulWidget {
  ViewProduct({Key? key}) : super(key: key);

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
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
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      appBar: CustomAppBar(
        onFavoritePressed: () {},
        onAddToCartPressed: () {},
        onUploadImagePressed: () {},
        images: [
          'assets/icons/biryani1.png',
          'assets/icons/pizza.png',
          'assets/icons/burger1.png',
          'assets/icons/sandwich1.png',
          'assets/icons/Chinese1.png',
          'assets/icons/fries1.png',
          'assets/icons/Thai.png',
          'assets/icons/Turkish.png',
          'assets/icons/soups.png'
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Biryani",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12),
                  width: 50,
                  height: 30,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12),
                  width: 50,
                  height: 30,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "2",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12),
                  width: 50,
                  height: 30,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "3",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.greenAccent),
                  width: 50,
                  height: 30,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12),
                  width: 50,
                  height: 30,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "5",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
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
