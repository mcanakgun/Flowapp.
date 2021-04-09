import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapGymScreen extends StatefulWidget {
  @override
  _MapGymScreenState createState() => _MapGymScreenState();
}

class _MapGymScreenState extends State<MapGymScreen> {
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
          markerId: MarkerId('id-10'),
          position: LatLng(41.056477, 28.988328),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-11'),
          position: LatLng(41.048335, 28.985199),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-12'),
          position: LatLng(41.048688, 28.985361),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-13'),
          position: LatLng(41.049287, 28.985596),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-14'),
          position: LatLng(41.049654, 28.985740),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-15'),
          position: LatLng(41.049954, 28.985866),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-16'),
          position: LatLng(41.050267, 28.986191),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-17'),
          position: LatLng(41.050580, 28.986552),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-18'),
          position: LatLng(41.050974, 28.986895),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-19'),
          position: LatLng(41.051413, 28.987330),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-20'),
          position: LatLng(41.051854, 28.987413),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-21'),
          position: LatLng(41.052519, 28.987491),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-22'),
          position: LatLng(41.053036, 28.987383),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );

      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-23'),
          position: LatLng(41.053580, 28.987292),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-24'),
          position: LatLng(41.054206, 28.987256),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-25'),
          position: LatLng(41.054819, 28.987130),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-26'),
          position: LatLng(41.055363, 28.987058),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-27'),
          position: LatLng(41.055866, 28.986986),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-28'),
          position: LatLng(41.056438, 28.986968),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-29'),
          position: LatLng(41.057023, 28.986995),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-30'),
          position: LatLng(41.056988, 28.987640),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-31'),
          position: LatLng(41.056896, 28.988339),
          infoWindow: InfoWindow(title: 'Gym'),
        ),
      );
      _markers.add(
        Marker(
          icon: greenWay,
          markerId: MarkerId('id-32'),
          position: LatLng(41.056664, 28.988305),
          infoWindow: InfoWindow(title: 'Gym'),
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
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-33'),
          position: LatLng(41.048953, 28.985511),
          infoWindow: InfoWindow(title: "Traffic LightHome1"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-50'),
          position: LatLng(41.048781, 28.987876),
          infoWindow: InfoWindow(title: "Traffic LightHome2"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-51'),
          position: LatLng(41.050110, 28.989181),
          infoWindow: InfoWindow(title: "Traffic LightHome3"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-52'),
          position: LatLng(41.051339, 28.990016),
          infoWindow: InfoWindow(title: "Traffic LightHome4"),
        ),
      );
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-53'),
          position: LatLng(41.048953, 28.985511),
          infoWindow: InfoWindow(title: "Traffic LightGym1"),
        ),
      );
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-54'),
          position: LatLng(41.051348, 28.987191),
          infoWindow: InfoWindow(title: "Traffic LightGym2"),
        ),
      );
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-55'),
          position: LatLng(41.053588, 28.987356),
          infoWindow: InfoWindow(title: "Traffic LightGym3"),
        ),
      );
      _markers.add(
        Marker(
          icon: trafficMarker,
          markerId: MarkerId('id-56'),
          position: LatLng(41.057004, 28.987565),
          infoWindow: InfoWindow(title: "Traffic LightGym4"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-57'),
          position: LatLng(41.052808, 28.983792),
          infoWindow: InfoWindow(title: "Traffic LightRandom1"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-58'),
          position: LatLng(41.048042, 28.980601),
          infoWindow: InfoWindow(title: "Traffic LightRandom2"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-59'),
          position: LatLng(41.053676, 28.993791),
          infoWindow: InfoWindow(title: "Traffic LightRandom3"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-60'),
          position: LatLng(41.055540, 28.979374),
          infoWindow: InfoWindow(title: "Traffic LightRandom4"),
        ),
      );
      _markers.add(
        Marker(
          icon: opacityTrafficMarker,
          markerId: MarkerId('id-61'),
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
                      "60",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.red,
                      ),
                    ),
                    Icon(
                      Icons.arrow_downward,
                      size: 50,
                      color: Colors.red,
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
