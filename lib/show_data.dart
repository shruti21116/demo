import 'dart:convert';
import 'dart:developer';

import 'package:demo/model/test_id_resposne_model.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

class ShowData extends StatefulWidget {
  final id;
  const ShowData({super.key, required this.id});

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {

  TestIdResponseModel? testIdResponseModel;
  Map<String,dynamic>? data;

  String _extractTextFromHtml(String htmlString) {
    final document = parse(htmlString);
    final combine=RegExp(r'(<[^>]*>)|(\[\/?vc_[^\]]+\])');
    return htmlString.replaceAll(combine, '');
    final body =
        document.body?.text ?? '';
    return body.trim();
  }

  Future<Map<String, dynamic>?> getData() async {
    http.Response response = await http.get(Uri.parse(
        "https://marathon-staging.testingweblink.com/wp-json/custom/v1/faqs/${widget.id}"));

    if (response.statusCode == 200) {
      try {
        testIdResponseModel = testIdResponseModelFromJson(response.body);

        data=jsonDecode(response.body);
      } catch (e) {
        log("ERROR===>$e");
      }
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Show Data"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: testIdResponseModel?.data?.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                              title: Text(
                                  "${testIdResponseModel?.data?[index].id}"),
                              splashColor: Colors.pink,
                              subtitle: Column(
                                children: [
                                  Text(
                                      "${testIdResponseModel?.data?[index].title}"),
                                  const Divider(),
                                  Text(_extractTextFromHtml(
                                      "${testIdResponseModel?.data?[index].content}"))

                                ],
                              ));
                        },
                      ),
                    )
                  ]);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
