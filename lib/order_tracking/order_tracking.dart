import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key});

  @override
  State<OrderTracking> createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        toolbarHeight: 120,
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'YOUR ORDER IS ON',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'THE WAY',
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              '',
              style: TextStyle(fontSize: 10.0),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(24.8607, 67.0011),
                zoom: 12.0,
              ),
              markers: <Marker>{
                const Marker(
                  markerId: MarkerId('KarachiMarkerId'),
                  position: LatLng(24.8607, 67.0011),
                  infoWindow: InfoWindow(
                    title: 'Karachi',
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'homepage');
                  },
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.red,
                    ),
                    fixedSize: const Size(150, 50),
                  ),
                  child: const Text(
                    'Cancel Order',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
