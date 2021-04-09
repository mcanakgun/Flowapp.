import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

class MapScreenMain extends StatefulWidget {
  @override
  _MapScreenMainState createState() => _MapScreenMainState();
}

class _MapScreenMainState extends State<MapScreenMain> {
  LatLng searchCoordinate;
  Location searchLocation;
  GoogleMapController mapController;
  Set<Marker> _markers = {};
  List<LatLng> polylineCoordinates = [];
  BitmapDescriptor mapMarker;
  BitmapDescriptor trafficMarker;
  BitmapDescriptor opacityTrafficMarker;
  BitmapDescriptor arrowMarker;
  String searchAddr;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
    setCustomMarker2();
    setCustomMarker3();
    setCustomMarker4();
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
    opacityTrafficMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), "assets/images/opacitymark.png");
  }

  // Create the polylines for showing the route between two places

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
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
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-6'),
          position: LatLng(41.048953, 28.985511),
          infoWindow: InfoWindow(title: "Traffic LightHome1"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-7'),
          position: LatLng(41.048781, 28.987876),
          infoWindow: InfoWindow(title: "Traffic LightHome2"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-8'),
          position: LatLng(41.050110, 28.989181),
          infoWindow: InfoWindow(title: "Traffic LightHome3"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-9'),
          position: LatLng(41.051339, 28.990016),
          infoWindow: InfoWindow(title: "Traffic LightHome4"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-10'),
          position: LatLng(41.048953, 28.985511),
          infoWindow: InfoWindow(title: "Traffic LightGym1"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-11'),
          position: LatLng(41.051348, 28.987191),
          infoWindow: InfoWindow(title: "Traffic LightGym2"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-12'),
          position: LatLng(41.053588, 28.987356),
          infoWindow: InfoWindow(title: "Traffic LightGym3"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-13'),
          position: LatLng(41.057004, 28.987565),
          infoWindow: InfoWindow(title: "Traffic LightGym4"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-14'),
          position: LatLng(41.052808, 28.983792),
          infoWindow: InfoWindow(title: "Traffic LightRandom1"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-15'),
          position: LatLng(41.048042, 28.980601),
          infoWindow: InfoWindow(title: "Traffic LightRandom2"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-16'),
          position: LatLng(41.053676, 28.993791),
          infoWindow: InfoWindow(title: "Traffic LightRandom3"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-17'),
          position: LatLng(41.055540, 28.979374),
          infoWindow: InfoWindow(title: "Traffic LightRandom4"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-18'),
          position: LatLng(41.058887, 28.991517),
          infoWindow: InfoWindow(title: "Traffic LightRandom5"),
        ),
      );
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
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, "/MapHome");
              });
            }),
      );

      _markers.add(
        Marker(
            icon: mapMarker,
            markerId: MarkerId('id-10'),
            position: LatLng(41.056477, 28.988328),
            infoWindow: InfoWindow(title: 'Gym'),
            onTap: () {
              Navigator.pushNamed(context, "/MapGym");
            }),
      );
    });
  }

  void searchandNavigate() {
    locationFromAddress(searchAddr).then((result) {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(result[0].latitude, result[0].longitude),
            zoom: 10,
          ),
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
          top: 30,
          right: 15,
          left: 15,
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Address",
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 15, top: 15),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: searchandNavigate,
                  iconSize: 30,
                ),
              ),
              onChanged: (val) {
                setState(() {
                  searchAddr = val;
                });
              },
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            height: 150,
            width: 600,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Your Statistics",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Icon(
                            Icons.beenhere,
                            size: 30,
                            color: Colors.green,
                          ),
                          Text(
                            "%14.2",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Fuel Saved",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.car,
                            color: Colors.green,
                            size: 30,
                          ),
                          Text(
                            "4.75",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "KM Flow",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.trafficLight,
                            size: 25,
                            color: Colors.green,
                          ),
                          Text(
                            "27",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Red Lights Flowed",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
