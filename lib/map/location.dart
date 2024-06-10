import 'package:demo/map/google_marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationDemo extends StatefulWidget {
  const LocationDemo({super.key});

  @override
  State<LocationDemo> createState() => _LocationDemoState();
}

class _LocationDemoState extends State<LocationDemo> {
  String? _currentAddress;
  Position? _currentPosition;

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Get.snackbar(
          "", "Location services are disabled. Please enable the services");
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Get.snackbar(
          "",
          "Location permissions are denied",
          backgroundColor: Colors.black,
        );
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Get.snackbar("",
          "Location permissions are permanently denied, we cannot request permissions.");
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);
      _getAddressFromLatLng(_currentPosition!);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
            _currentPosition!.latitude, _currentPosition!.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
            '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }


  // Future<void> findNearestFireStation(latitude, longitude) async {
  //   final url =
  //       'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$latitude,$longitude&radius=5000&type=fire_station&key=AIzaSyCj4bCi3YC6UCPr3sPxDDoI6vjJGAvHloc';
  //
  //   final response = await http.get(Uri.parse(url));
  //
  //   if (response.statusCode == 200) {
  //     final data = json.decode(response.body);
  //     final results = data['results'];
  //     if (results != null && results.isNotEmpty) {
  //       final nearestStation = results[0];
  //       final location = nearestStation['geometry']['location'];
  //       final lat = location['lat'];
  //       final lng = location['lng'];
  //       final mapsUrl =
  //           'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
  //       if (await canLaunch(mapsUrl)) {
  //         await launch(mapsUrl);
  //       } else {
  //         throw 'Could not launch $mapsUrl';
  //       }
  //     } else {
  //       throw 'No fire stations found nearby';
  //     }
  //   } else {
  //     throw Exception('Failed to load data');
  //   }
  // }

  void _launchGoogleMaps() async {
    final url =
        'https://www.google.com/maps/search/?api=1&query=${_currentPosition?.latitude},${_currentPosition?.longitude}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    _getCurrentPosition();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              Text('LAT: ${_currentPosition?.latitude ?? ""}'),
              Text('LNG: ${_currentPosition?.longitude ?? ""}'),
              _currentAddress == null
                  ? const SizedBox()
                  : Text("$_currentAddress"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _getCurrentPosition();
                    _currentAddress != null ?
                    Get.to(const GoogleMapDemo(), arguments: {
                            "longitude": _currentPosition?.longitude,
                            "latitude": _currentPosition?.latitude
                          })
                   // _launchGoogleMaps()
                    : const SizedBox();
                  },
                  child: const Text("Add Location")),
            ],
          ))
        ],
      ),
    );
  }
}
