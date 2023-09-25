import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    required this.onFavoritePressed,
    required this.onUploadImagePressed,
    required this.images,
    required Null Function() onAddToCartPressed,
  }) : super(key: key);

  final VoidCallback onFavoritePressed;
  final VoidCallback onUploadImagePressed;
  final List<String> images;

  @override
  Size get preferredSize => const Size.fromHeight(200.0);

  void _showAddToCartBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          alignment: Alignment.topRight,
          children: [
            Positioned(
              top: -20,
              right: 30,
              child: Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.redAccent, shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                    )),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 340.0,
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
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Spicy Fries',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Full 1 x item',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          backgroundColor:
                                              Color.fromRGBO(250, 250, 250, 1),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.remove,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '3',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          backgroundColor:
                                              Color.fromRGBO(250, 250, 250, 1),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Hot Burger',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Large 1 x item',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          backgroundColor:
                                              Color.fromRGBO(250, 250, 250, 1),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.remove,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '2',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          backgroundColor:
                                              Color.fromRGBO(250, 250, 250, 1),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'mycart');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurpleAccent,
                          ),
                          child: const Text(
                            "Add to Order",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.upload,
            color: Colors.black,
          ),
          onPressed: onUploadImagePressed,
        ),
        IconButton(
          icon: const Icon(Icons.more_vert, color: Colors.black),
          onPressed: () {},
        ),
      ],
      flexibleSpace: SizedBox(
        height: 930.0,
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(16),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        images[index],
                        height: 140.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
              child: GestureDetector(
                onTap: () {
                  _showAddToCartBottomSheet(context);
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
                      color: Colors.purpleAccent,
                    ),
                    SizedBox(width: 5.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
