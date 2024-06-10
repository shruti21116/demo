// To parse this JSON data, do
//
//     final testIdResponseModel = testIdResponseModelFromJson(jsonString);

import 'dart:convert';

TestIdResponseModel testIdResponseModelFromJson(String str) => TestIdResponseModel.fromJson(json.decode(str));

String testIdResponseModelToJson(TestIdResponseModel data) => json.encode(data.toJson());

class TestIdResponseModel {
  String? status;
  List<Datum>? data;

  TestIdResponseModel({
    this.status,
    this.data,
  });

  factory TestIdResponseModel.fromJson(Map<String, dynamic> json) => TestIdResponseModel(
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
  String? title;
  String? content;

  Datum({
    this.id,
    this.title,
    this.content,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    title: json["title"],
    content: json["content"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "content": content,
  };
}
