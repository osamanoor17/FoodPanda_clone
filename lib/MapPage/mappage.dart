import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'FIND RESTAURANTS NEAR YOUR',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                'LOCATION',
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                'Please allow app access to your location',
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            // Google Map
            Expanded(
              child: GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: LatLng(24.8607, 67.0011),
                  zoom: 12.0,
                ),
                markers: <Marker>{
                  const Marker(
                    markerId: MarkerId('KarachiMarkerId'),
                    position: LatLng(24.8607, 67.0011), // Karachi coordinates
                    infoWindow: InfoWindow(
                      title: 'Karachi',
                    ),
                  ),
                },
              ),
            ),

            // Buttons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      fixedSize: const Size(150, 50),
                    ),
                    child: const Text(
                      'Allow',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      fixedSize: const Size(150, 50),
                    ),
                    child: const Text(
                      'Don\'t Allow',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
