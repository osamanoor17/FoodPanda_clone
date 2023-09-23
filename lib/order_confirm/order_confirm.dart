
import 'package:flutter/material.dart';

class OrderConfirm extends StatefulWidget {
  @override
  _OrderConfirmState createState() => _OrderConfirmState();
}

class _OrderConfirmState extends State<OrderConfirm> {
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
                'YOUR ORDER HAS BEENN PLACED',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'SUCCESSFULLY',
                  style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 15,right: 10),
                child: Image.asset(
                  "assets/icons/icon6.png",
                ),
              ),
              const SizedBox(height: 150.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black54,
                    minimumSize: Size(150, 50),
                  ),
                  child: const Text('Track Order',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

