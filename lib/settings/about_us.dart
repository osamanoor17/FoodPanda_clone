import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Our Company',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                'Welcome to Food Delivery App, your go-to platform for ordering delicious food from local restaurants.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Our Mission',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'At Food Delivery App, our mission is to connect you with the best food options in your area, making it easy and convenient to enjoy your favorite meals from the comfort of your home or office.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Contact Us',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'If you have any questions or feedback, please feel free to contact us:',
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email: contact@fooddeliveryapp.com'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone: +1 (123) 456-7890'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
