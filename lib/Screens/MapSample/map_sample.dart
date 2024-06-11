import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  GoogleMapController? mapController;

  final LatLng _center = const LatLng(31.475897, 74.469511);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  List<Marker> marker = [];
  List<Marker> list = const [
    Marker(
        markerId: MarkerId("1"),
        position: LatLng(31.475897, 74.469511),
        infoWindow: InfoWindow(title: "My Location"))
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    marker.addAll(list);
  }

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          onMapCreated: _onMapCreated,
          mapType: MapType.terrain,
          markers: Set.of(marker),
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
        Positioned(
            top: appSize.height * 0.03,
            left: appSize.height * 0.0 - 170,
            width: appSize.width,
            child: InkWell(
                onTap: () {
                  context.pushReplacement("/dashboard");
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF0175B8),
                  size: appSize.height * 0.040,
                ))),
        Positioned(
            top: appSize.height * 0.040,
            left: appSize.height * 0.190,
            child: Text(
              "Location",
              style: TextStyle(
                color: Color(0xFF0175B8),
                fontWeight: FontWeight.bold,
                fontSize: appSize.height * 0.025,
              ),
            )),
        Positioned(
            bottom: appSize.height * 0.0,
            width: appSize.width,
            child: Image.asset(
              "assets/Vector.png",
              fit: BoxFit.fitWidth,
            )),
        Positioned(
            bottom: appSize.height * 0.310,
            left: appSize.height * 0.050,
            child: Text(
              "Check in",
              style: TextStyle(
                  color: Color(0xFF939393),
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            )),
        Positioned(
            bottom: appSize.height * 0.250,
            left: appSize.height * 0.050,
            child: Icon(
              Icons.location_on,
              size: 40,
              color: Color(0xFF939393),
            )),
        Positioned(
            bottom: appSize.height * 0.250,
            left: appSize.height * 0.140,
            child: Text(
              "Your Location",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
        Positioned(
            bottom: appSize.height * 0.160,
            left: appSize.height * 0.08,
            child: Text(
              textDirection: TextDirection.ltr,
              "Lorem ipsum dolor sit amet,consetetur sadipiscing\n elitr,sed diam nonumy eirmod tempor invidunt ut\n labore et dolore magna aliquyam",
              style: TextStyle(
                  color: Colors.black, fontSize: appSize.height * 0.016),
            )),
        Positioned(
            bottom: appSize.height * 0.070,
            left: appSize.height * 0.120,
            child: Image.asset(
              "assets/done.png",
            )),
      ]),
    );
  }
}
