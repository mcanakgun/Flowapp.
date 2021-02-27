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
  BitmapDescriptor mapMarker;
  String searchAddr;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
  }

  void setCustomMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), "assets/images/marker.png");
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-1'),
          position: LatLng(41.0519599, 28.9882992),
          infoWindow: InfoWindow(title: 'Destination'),
        ),
      );
    });
  }

  LatLng searchandNavigate() {
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
