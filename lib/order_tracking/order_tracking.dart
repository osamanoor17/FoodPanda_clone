import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key});

  @override
  State<OrderTracking> createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  late GoogleMapController mapController;
  double _latitude = 0.0;
  double _longitude = 0.0;
  bool _locationLoaded = false;

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  Future<void> getUserLocation() async {
    var isEnable = await checkPermission();
    if (isEnable) {
      Position location = await Geolocator.getCurrentPosition();
      setState(() {
        _latitude = location.latitude;
        _longitude = location.longitude;
        _locationLoaded = true;
      });
    }
  }

  Future<bool> checkPermission() async {
    bool isEnable = await Geolocator.isLocationServiceEnabled();
    if (!isEnable) {
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }

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
            child: _locationLoaded
                ? GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(_latitude, _longitude),
                      zoom: 15.0,
                    ),
                    markers: <Marker>{
                      Marker(
                        markerId: MarkerId('UserLocation'),
                        position: LatLng(_latitude, _longitude),
                        infoWindow: InfoWindow(
                          title: 'Your Location',
                        ),
                      ),
                    },
                    onMapCreated: (GoogleMapController controller) {
                      mapController = controller;
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(),
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
