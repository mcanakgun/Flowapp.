import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  BitmapDescriptor arrowMarker;
  String searchAddr;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
    setCustomMarker2();
    setCustomMarker3();
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

  // Create the polylines for showing the route between two places

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-2'),
          position: LatLng(41.0536905, 28.9871126),
          infoWindow: InfoWindow(title: "Traffic Light"),
        ),
      );
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-3'),
          position: LatLng(41.0555258, 28.9857885),
          infoWindow: InfoWindow(title: "Traffic Light"),
        ),
      );
      _markers.add(Marker(
        icon: trafficMarker,
        markerId: MarkerId('id-4'),
        position: LatLng(41.0543779, 28.9850725),
        infoWindow: InfoWindow(title: "Traffic Light"),
      ));
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-5'),
          position: LatLng(41.0529013, 28.9837823),
          infoWindow: InfoWindow(title: "Traffic Light"),
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
      ]),
    );
  }
}
