import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = 'cash';

  Widget customRadioButton(String value, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPaymentMethod = value;
        });
      },
      child: Row(
        children: [
          Container(
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  selectedPaymentMethod == value ? Colors.green : Colors.grey,
            ),
            child: selectedPaymentMethod == value
                ? const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 16.0,
                  )
                : null,
          ),
          const SizedBox(width: 12.0),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              height: 2.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Select Payment ',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Method',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20.0),
              customRadioButton('cash', 'COD (Cash on Delivery)'),
              customRadioButton('myself', 'Pickup my self'),
              customRadioButton('card', 'Pay with Credit/Debit card'),
              const SizedBox(height: 350.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'order_confirm');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.greenAccent,
                    minimumSize: const Size(150, 50),
                  ),
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
