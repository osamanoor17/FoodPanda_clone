import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/icons/person.png'),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "FOOD Delivery",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "fooddelivery@gmail.com",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone Number"),
                subtitle: TextField(
                  decoration: InputDecoration(
                    hintText: "+92 123 4567891",
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Address"),
                subtitle: TextField(
                  decoration: InputDecoration(
                    hintText: "123 Main St, City, Pakistan",
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                  ),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
