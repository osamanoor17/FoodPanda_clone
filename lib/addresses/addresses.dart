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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Addresses'),
      ),
      body: ListView.builder(
        itemCount: userAddresses.length,
        itemBuilder: (context, index) {
          final address = userAddresses[index];
          return ListTile(
            title: Text(address.name),
            subtitle: Text(address.address),
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                _editAddress(address);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToAddAddressScreen();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _editAddress(Address address) {
  }
  void _navigateToAddAddressScreen() {
  }
}
class Address {
  final String name;
  final String address;

  Address({required this.name, required this.address});
}
