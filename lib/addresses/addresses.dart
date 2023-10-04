import 'package:flutter/material.dart';

class Addresses extends StatefulWidget {
  const Addresses({Key? key}) : super(key: key);

  @override
  State<Addresses> createState() => _AddressesState();
}

class _AddressesState extends State<Addresses> {
  List<Address> userAddresses = [
    Address(
      name: 'Clifton Beach',
      address: 'Clifton, Karachi, Pakistan',
    ),
    Address(
      name: 'Quaid-e-Azam Mausoleum',
      address: 'M.A. Jinnah Road, Karachi, Pakistan',
    ),
    Address(
      name: 'Pakistan Maritime Museum',
      address: 'Karsaz Road, Karachi, Pakistan',
    ),
    Address(
      name: 'Empress Market',
      address: 'Preedy Street, Saddar, Karachi, Pakistan',
    ),
    Address(
      name: 'Karachi Zoo',
      address: 'Nishtar Road, Karachi, Pakistan',
    ),
  ];

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    super.dispose();
  }

  void _editAddress(Address address) {
    nameController.text = address.name;
    addressController.text = address.address;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Address'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              TextFormField(
                controller: addressController,
                decoration: const InputDecoration(
                  labelText: 'Address',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _saveEditedAddress(address);
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _saveEditedAddress(Address originalAddress) {
    final newName = nameController.text;
    final newAddress = addressController.text;

    if (newName.isNotEmpty && newAddress.isNotEmpty) {
      setState(() {
        originalAddress.name = newName;
        originalAddress.address = newAddress;
      });
    }

    nameController.clear();
    addressController.clear();
  }

  void _navigateToAddAddressScreen() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add Address'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              TextFormField(
                controller: addressController,
                decoration: const InputDecoration(
                  labelText: 'Address',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _saveNewAddress();
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _saveNewAddress() {
    final newName = nameController.text;
    final newAddress = addressController.text;

    if (newName.isNotEmpty && newAddress.isNotEmpty) {
      setState(() {
        userAddresses.add(Address(name: newName, address: newAddress));
      });
    }

    nameController.clear();
    addressController.clear();
  }

  void _deleteAddress(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Deletion'),
          content: const Text('Are you sure you want to delete this address?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _confirmDelete(index);
                Navigator.of(context).pop();
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _confirmDelete(int index) {
    setState(() {
      userAddresses.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Addresses'),
      ),
      body: ListView.builder(
        itemCount: userAddresses.length,
        itemBuilder: (context, index) {
          final address = userAddresses[index];
          return ListTile(
            title: Text(address.name),
            subtitle: Text(address.address),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    _editAddress(address);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    _deleteAddress(index);
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToAddAddressScreen();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Address {
  String name;
  String address;

  Address({required this.name, required this.address});
}
