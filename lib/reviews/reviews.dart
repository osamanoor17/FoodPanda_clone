import 'package:flutter/material.dart';

class CustomReviews extends StatelessWidget {
  final String imageperson;
  final String title;
  final String user;
  final double rating;
  final String timeduration;
  final String description;
  final MYcolor;

  CustomReviews(
      {required this.imageperson,
      required this.title,
      required this.user,
      required this.rating,
      required this.timeduration,
      required this.MYcolor,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage(imageperson),
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            user,
                            style: const TextStyle(fontSize: 10),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            timeduration,
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MYcolor),
                    width: 50,
                    height: 30,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          rating.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      description,
                      style: const TextStyle(fontSize: 15.0),
                      maxLines: 4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
