import 'package:flutter/material.dart';

class VouchersOffersScreen extends StatefulWidget {
  @override
  _VouchersOffersScreenState createState() => _VouchersOffersScreenState();
}

class _VouchersOffersScreenState extends State<VouchersOffersScreen> {
  List<String> vouchers = ["SAVE10", "FREESHIP", "OFF50"];
  String selectedVoucher = "";
  double totalPrice = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vouchers & Offers'),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: vouchers.length,
        itemBuilder: (BuildContext context, int index) {
          final voucher = vouchers[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedVoucher = voucher;
                applyVoucher();
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: selectedVoucher == voucher ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  voucher,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: selectedVoucher == voucher ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total Price: \$${calculateTotalPrice().toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color
              ),
            ),
          ),
        ),
      ),
    );
  }
  void applyVoucher() {
    if (selectedVoucher == "SAVE10") {
      totalPrice -= (totalPrice * 0.10);
    } else if (selectedVoucher == "FREESHIP") {
    } else if (selectedVoucher == "OFF50") {
      totalPrice -= 50.0;
    }
  }
  double calculateTotalPrice() {
    return totalPrice;
  }
}
