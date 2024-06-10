import 'dart:async';

import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition _kGoogle = CameraPosition(
    target: LatLng(37.42796133580664, -122.885749655962),
    zoom: 14,
  );

  Uint8List? markerList;

  List<String> images = [
    "assets/images/bus.png",
    "assets/images/bycicle.png",
    "assets/images/car.png",
    "assets/images/food-delivery.png",
    "assets/images/travelling.png"
  ];
  final List<Marker> _marker = <Marker>[];
  final List<Polyline> _polyLines = <Polyline>[];
  final Set<Polygon> _polygon = <Polygon>{};
  final Set<Circle> _circle = <Circle>{};

  // final List<Marker> _list = [
  //   const Marker(
  //       markerId: MarkerId("1"),
  //       position: LatLng(20.42796133580664, 80.885749655962),
  //       infoWindow: InfoWindow(title: "My position ")),
  //   const Marker(
  //       markerId: MarkerId("1"),
  //       position: LatLng(25.42796133580664, 80.885749655962),
  //       infoWindow: InfoWindow(title: "Location 1")),
  //   const Marker(
  //       markerId: MarkerId("1"),
  //       position: LatLng(20.42796133580664, 73.885749655962),
  //       infoWindow: InfoWindow(title: "Location 2")),
  // ];

  Future<Uint8List> getImages(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetHeight: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
    // _marker.addAll(_list);
  }

    final List<LatLng> _latLen = <LatLng>[
      LatLng(19.0759837, 72.8776559),
      LatLng(22.679079, 77.069710),
      LatLng(23.850000, 80.949997),
      LatLng(24.879999, 74.629997),
      LatLng(13.166700, 74.833298),
    ];
  loadData() async {
    for (int i = 0; i < images.length; i++) {
      final Uint8List markIcons = await getImages(images[i], 50);
      _marker.add(
        Marker(
            markerId: MarkerId("$i"),
            draggable: true,
            onDrag: (value) {},
            position: _latLen[i],
            icon: BitmapDescriptor.fromBytes(markIcons),
            infoWindow: InfoWindow(title: "My position $i")),
      );
      _polyLines.add(Polyline(
          polylineId: PolylineId("$i"),
          points: _latLen,
          // patterns: [PatternItem.dot],
          color: Colors.red,
          width: 2));
      _polygon.add(Polygon(
        polygonId: PolygonId("$i"),
        points: _latLen,
        fillColor: Colors.green.withOpacity(0.3),
        strokeColor: Colors.yellow,
        geodesic: true,
        strokeWidth: 10,
      ));
      _circle.add(Circle(
        circleId: CircleId("$i"),
        radius: 5000,
        center: _latLen.first,
      ));

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0F9D58),
          title: const Text("Marker Demo"),
        ),
        body: GoogleMap(
          initialCameraPosition: _kGoogle,
          // trafficEnabled: true,
          mapType: MapType.normal,
          myLocationEnabled: true,
          compassEnabled: true,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          polylines: Set<Polyline>.of(_polyLines),
          markers: Set<Marker>.of(_marker),
          // polygons: _polygon,
          circles: {
            Circle(
                circleId: CircleId("circleId"),
                center: LatLng(19.0759837, 72.8776559),
                radius: 5000,
                strokeWidth: 2,
                strokeColor: Colors.blue,
                fillColor: Colors.yellow.withOpacity(0.2))
          },
        ));
  }
}
