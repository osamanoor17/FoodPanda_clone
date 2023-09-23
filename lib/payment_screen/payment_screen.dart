import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = 'cash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Select Payment ',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const Padding(padding:EdgeInsets.only(left: 12),
             child:
             Text(
              'Method',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            ),),
            const SizedBox(height: 20.0),
            RadioListTile(
              title:  const Text('COD (Cash on Delivery)',style: TextStyle(fontWeight: FontWeight.bold),),
              value: 'cash',
              groupValue: selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  selectedPaymentMethod = value!;
                });
              },
            ),
            RadioListTile(
              title:  const Text('Pickup my self',style: TextStyle(fontWeight: FontWeight.bold),),
              value: 'myself',
              groupValue: selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  selectedPaymentMethod = value!;
                });
              },
            ),
            RadioListTile(
              title:  const Text('Pay with Credit/Debit card',style: TextStyle(fontWeight: FontWeight.bold),),
              value: 'card',
              groupValue: selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  selectedPaymentMethod = value!;
                });
              },
            ),
            const SizedBox(height: 320.0),
            Center(child:
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green, // Text color
              ),
              child: const Text('Proceed to Payment'),
            ),
            ), ],
        ),
      ),
      ), );
  }
}
