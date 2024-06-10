import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatefulWidget {
  const GoogleMapDemo({super.key});

  @override
  State<GoogleMapDemo> createState() => _GoogleMapDemoState();
}

class _GoogleMapDemoState extends State<GoogleMapDemo> {
  double latitude = Get.arguments["latitude"];
  double longitude = Get.arguments["longitude"];
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;


  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(const ImageConfiguration(size: Size(2, 2)),
            "assets/images/google_map_icon.png")
        .then((icon) {
      setState(() {
        markerIcon = icon;
      });
    });
  }


  @override
  void initState() {
    addCustomIcon();

    // TODO: implement initState
    super.initState();
  }
  final List<LatLng> _latLen = <LatLng>[
    LatLng(19.0759837, 72.8776559),
    LatLng(22.679079, 77.069710),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          bearing: 192.8334901395799,
          target: LatLng(latitude, longitude),
          zoom: 14,
          // tilt: 59.440717697143555),
        ),
        myLocationEnabled: true,
        markers: {
          Marker(
            markerId: const MarkerId("Demo"),
            position: LatLng(latitude, longitude),
            icon: markerIcon,
            draggable: true,
            onDragEnd: (value) {},
          ),
        },
        polylines: {
          Polyline(
              polylineId: const PolylineId("polyLineId"),
              points: _latLen,
              width: 2,
              color: Colors.blue)
        },
      ),
    );
  }
}
