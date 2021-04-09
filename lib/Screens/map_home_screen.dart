import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapHomeScreen extends StatefulWidget {
  @override
  _MapHomeScreenState createState() => _MapHomeScreenState();
}

class _MapHomeScreenState extends State<MapHomeScreen> {
  BitmapDescriptor mapMarker;
  BitmapDescriptor trafficMarker;
  BitmapDescriptor opacityTrafficMarker;
  BitmapDescriptor arrowMarker;
  BitmapDescriptor greenWay;
  String searchAddr;
  Set<Marker> _markers = {};
  GoogleMapController mapController;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
    setCustomMarker2();
    setCustomMarker3();
    setCustomMarker4();
    setCustomMarker5();
  }

  void setCustomMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), "assets/images/marker.png");
  }

  void setCustomMarker2() async {
    trafficMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), "assets/images/customMarker.png");
  }

  void setCustomMarker3() async {
    arrowMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), "assets/images/mark.png");
  }

  void setCustomMarker4() async {
    greenWay = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), "assets/images/greenway.png");
  }

  void setCustomMarker5() async {
    opacityTrafficMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), "assets/images/opacitymark.png");
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;

      _markers.add(
        Marker(
          icon: arrowMarker,
          markerId: MarkerId('id-6'),
          position: LatLng(41.047715, 28.9851013),
          infoWindow: InfoWindow(title: "Your Location"),
        ),
      );
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-7'),
          position: LatLng(41.051996, 28.990059),
          infoWindow: InfoWindow(title: 'Home'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-8'),
          position: LatLng(41.048350, 28.985213),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-9'),
          position: LatLng(41.048840, 28.985411),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-10'),
          position: LatLng(41.051996, 28.990059),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-11'),
          position: LatLng(41.048867, 28.985916),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-12'),
          position: LatLng(41.048622, 28.986692),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-21'),
          position: LatLng(41.048894, 28.987973),
        ),
      );

      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-13'),
          position: LatLng(41.048296, 28.987486),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-14'),
          position: LatLng(41.049452, 28.988262),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-15'),
          position: LatLng(41.049997, 28.988966),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-16'),
          position: LatLng(41.050541, 28.989742),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-17'),
          position: LatLng(41.051071, 28.990517),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-18'),
          position: LatLng(41.051371, 28.990048),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-19'),
          position: LatLng(41.051738, 28.990463),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-20'),
          position: LatLng(41.051997, 28.990066),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-2'),
          position: LatLng(41.0536905, 28.9871126),
          infoWindow: InfoWindow(title: "Traffic Light"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-3'),
          position: LatLng(41.0555258, 28.9857885),
          infoWindow: InfoWindow(title: "Traffic Light"),
        ),
      );
      _markers.add(Marker(
        icon: opacityTrafficMarker,
        markerId: MarkerId('id-4'),
        position: LatLng(41.0543779, 28.9850725),
        infoWindow: InfoWindow(title: "Traffic Light"),
      ));
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-5'),
          position: LatLng(41.0529013, 28.9837823),
          infoWindow: InfoWindow(title: "Traffic Light"),
        ),
      );
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-40'),
          position: LatLng(41.048953, 28.985511),
          infoWindow: InfoWindow(title: "Traffic LightHome1"),
        ),
      );
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-30'),
          position: LatLng(41.048781, 28.987876),
          infoWindow: InfoWindow(title: "Traffic LightHome2"),
        ),
      );
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-31'),
          position: LatLng(41.050110, 28.989181),
          infoWindow: InfoWindow(title: "Traffic LightHome3"),
        ),
      );
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-32'),
          position: LatLng(41.051339, 28.990016),
          infoWindow: InfoWindow(title: "Traffic LightHome4"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-33'),
          position: LatLng(41.048953, 28.985511),
          infoWindow: InfoWindow(title: "Traffic LightGym1"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-34'),
          position: LatLng(41.051348, 28.987191),
          infoWindow: InfoWindow(title: "Traffic LightGym2"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-35'),
          position: LatLng(41.053588, 28.987356),
          infoWindow: InfoWindow(title: "Traffic LightGym3"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-36'),
          position: LatLng(41.057004, 28.987565),
          infoWindow: InfoWindow(title: "Traffic LightGym4"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-37'),
          position: LatLng(41.052808, 28.983792),
          infoWindow: InfoWindow(title: "Traffic LightRandom1"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-38'),
          position: LatLng(41.048042, 28.980601),
          infoWindow: InfoWindow(title: "Traffic LightRandom2"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-39'),
          position: LatLng(41.053676, 28.993791),
          infoWindow: InfoWindow(title: "Traffic LightRandom3"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-41'),
          position: LatLng(41.055540, 28.979374),
          infoWindow: InfoWindow(title: "Traffic LightRandom4"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-42'),
          position: LatLng(41.058887, 28.991517),
          infoWindow: InfoWindow(title: "Traffic LightRandom5"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(41.0519599, 28.9882992),
            zoom: 15,
          ),
          onMapCreated: _onMapCreated,
          markers: _markers,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
        ),
        Positioned(
          top: 20,
          right: 10,
          left: 10,
          child: Container(
            height: 120,
            width: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 2.5,
                ),
                Text(
                  "Optimal Speed for the Current Route",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "50",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.green,
                      ),
                    ),
                    Icon(
                      Icons.arrow_upward,
                      size: 50,
                      color: Colors.green,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 150,
          child: RawMaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, "/MapMain");
            },
            elevation: 2.0,
            fillColor: Colors.white,
            child: Text(
              "Stop",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            padding: EdgeInsets.all(30.0),
            shape: CircleBorder(),
          ),
        ),
      ]),
    );
  }
}
