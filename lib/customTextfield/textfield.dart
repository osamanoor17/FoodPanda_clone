import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  CustomTextField({
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 8, right: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            hintText: 'Search your favourite foods',
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.filter_list_outlined,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
