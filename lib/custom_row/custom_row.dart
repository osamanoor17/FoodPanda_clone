import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomRowWidget(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32.0, top: 10),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: Text(
                "View all",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
