import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  // Function to open the user's email client
  void sendEmail(String email) {
    final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: email,
        queryParameters: {'subject': 'Inquiry from Food Delivery App'});
    launchUrl(emailLaunchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'About Our Company',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Welcome to Food Delivery App, your go-to platform for ordering delicious food from local restaurants.',
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Our Mission',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const Text(
                'At Food Delivery App, our mission is to connect you with the best food options in your area, making it easy and convenient to enjoy your favorite meals from the comfort of your home or office.',
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Contact Us',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const Text(
                'If you have any questions or feedback, please feel free to contact us:',
              ),
              GestureDetector(
                onTap: () {
                  sendEmail('contact@fooddeliveryapp.com');
                },
                child: const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email: contact@fooddeliveryapp.com'),
                ),
              ),
              const ListTile(
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
