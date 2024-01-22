import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      nameController.text = prefs.getString('name') ?? '';
      emailController.text = prefs.getString('email') ?? '';
      phoneController.text = prefs.getString('phone') ?? '';
      addressController.text = prefs.getString('address') ?? '';
    });
  }

  Future<void> saveUserData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', nameController.text);
    prefs.setString('email', emailController.text);
    prefs.setString('phone', phoneController.text);
    prefs.setString('address', addressController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
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
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Name"),
                  subtitle: isEditing
                      ? TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            hintText: "Enter your name",
                          ),
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        )
                      : Text(
                          nameController.text,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                ),
                ListTile(
                  leading: const Icon(Icons.email),
                  title: const Text("Email"),
                  subtitle: isEditing
                      ? TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            hintText: "Enter your email",
                          ),
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            if (!value.contains('@')) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        )
                      : Text(
                          emailController.text,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                ),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text("Phone Number"),
                  subtitle: isEditing
                      ? TextFormField(
                          controller: phoneController,
                          decoration: const InputDecoration(
                            hintText: "+92 123 4567891",
                          ),
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            return null;
                          },
                        )
                      : Text(
                          phoneController.text,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                ),
                ListTile(
                  leading: const Icon(Icons.location_on),
                  title: const Text("Address"),
                  subtitle: isEditing
                      ? TextFormField(
                          controller: addressController,
                          decoration: const InputDecoration(
                            hintText: "123 Main St, City, Pakistan",
                          ),
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        )
                      : Text(
                          addressController.text,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: isEditing
                      ? ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              saveUserData();
                              setState(() {
                                isEditing = false;
                              });
                            }
                          },
                         style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 8.0,
    minimumSize: Size(170, 50), // Set the width and height here
  ),
                          child: const Text(
                            "Save",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            // Enter editing mode
                            setState(() {
                              isEditing = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 8.0,
    minimumSize: Size(170, 50), // Set the width and height here
  ),
                          child: const Text(
                            "Edit Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }
}
