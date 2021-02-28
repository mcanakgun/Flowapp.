import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapHomeScreen extends StatefulWidget {
  @override
  _MapHomeScreenState createState() => _MapHomeScreenState();
}

class _MapHomeScreenState extends State<MapHomeScreen> {
  BitmapDescriptor mapMarker;
  BitmapDescriptor trafficMarker;
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
      ]),
    );
  }
}
