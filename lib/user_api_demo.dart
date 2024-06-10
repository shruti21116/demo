import 'dart:convert';
import 'dart:developer';

import 'package:demo/map/google_marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserApiDemo extends StatefulWidget {
  const UserApiDemo({super.key});

  @override
  State<UserApiDemo> createState() => _UserApiDemoState();
}

class _UserApiDemoState extends State<UserApiDemo> {
  Map<String, dynamic>? data;
  Future<Map<String, dynamic>?> getUserData() async {
    http.Response response =
        await http.get(Uri.parse("https://dummyjson.com/users"));
    try {
      if (response.statusCode == 200) {
        data = jsonDecode(response.body);

        log("data===>$data");
      }
    } catch (e) {
      log("ERROR===>${e}");
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: data?.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: ListTile(
                          onTap: () {
                            Get.to(const GoogleMapDemo(), arguments: {
                              "longitude": data?["users"][index]["address"]
                                  ["coordinates"]["lng"],
                              "latitude": data?["users"][index]["address"]
                                  ["coordinates"]["lat"]
                            });
                          },
                          subtitle: Text(
                              "${data?["users"][index]["firstName"] + " " + data?["users"][index]["lastName"]}"),
                          title: Text("${data?["users"][index]["id"]}")),
                    ),
                  ],
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
