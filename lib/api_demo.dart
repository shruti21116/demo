import 'dart:convert';
import 'dart:developer';

import 'package:demo/show_data.dart';
import 'package:demo/model/test_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'model/faq_category.dart';

class ApiDemo extends StatefulWidget {
  const ApiDemo({super.key});

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  bool isLoad = false;
  Map<String, dynamic>? data;
  TestResponseModel? testResponseModel;

  List<FaqCategory> faqCategories = [];

  Future getData() async {
    http.Response response = await http.get(Uri.parse(
        "https://marathon-staging.testingweblink.com/wp-json/custom/v1/faq-categories/"));

    setState(() {
      isLoad = true;
    });
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        faqCategories = (jsonData['data'] as List).map((category) {
          return FaqCategory.fromJson(
              {'id': category['id'] ?? 0, 'name': category['name'] ?? ''});}).toList();

        log('id==>$faqCategories');
      } catch (e) {
        log("ERROR===>$e");
      } finally {
        setState(() {
          isLoad = false;
        });
      }
    } else {
      setState(() {
        isLoad = false;
      });
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await getData();
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Demo"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: isLoad
          ? const Center(child: CircularProgressIndicator(color: Colors.purple))
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    // itemCount: testResponseModel?.data?.length,
                    itemCount: faqCategories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // Get.to(
                             // ShowData(id: testResponseModel?.data?[index].id));
                       Get.to(
                              ShowData(id:faqCategories[index].id));

                        },
                        child: ListTile(
                            // title:
                            //     Text("${testResponseModel?.data?[index].id}"),
                            // subtitle: Text(
                            //     "${testResponseModel?.data?[index].name}")),
                            title: Text("${faqCategories[index].id}"),
                            subtitle: Text(faqCategories[index].name)),
                      );
                    },
                  ),
                )
              ],
            ),
    );
  }
}
