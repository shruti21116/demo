import 'package:demo/api_demo.dart';
import 'package:demo/map/location.dart';
import 'package:demo/recipes/recipe_api_demo.dart';
import 'package:demo/user_api_demo.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'map/google_marker_icon.dart';
import 'map/multiple_marker_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UserApiDemo(),
    );
  }
}


