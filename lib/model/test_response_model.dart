// To parse this JSON data, do
//
//     final testResponseModel = testResponseModelFromJson(jsonString);

import 'dart:convert';

TestResponseModel testResponseModelFromJson(String str) => TestResponseModel.fromJson(json.decode(str));

String testResponseModelToJson(TestResponseModel data) => json.encode(data.toJson());

class TestResponseModel {
  String? status;
  List<Datum>? data;

  TestResponseModel({
    this.status,
    this.data,
  });

  factory TestResponseModel.fromJson(Map<String, dynamic> json) => TestResponseModel(
    status: json["status"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  int? id;
  String? name;

  Datum({
    this.id,
    this.name,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
