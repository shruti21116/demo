import 'dart:convert';
import 'dart:developer';

import 'package:demo/recipes/model/recipe_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RecipeApiDemo extends StatefulWidget {
  const RecipeApiDemo({super.key});

  @override
  State<RecipeApiDemo> createState() => _RecipeApiDemoState();
}

class _RecipeApiDemoState extends State<RecipeApiDemo> {
  Map<String, dynamic>? data;
  List<Recipe>? recipeData;
  Future getRecipeData() async {
    http.Response response =
        await http.get(Uri.parse("https://dummyjson.com/recipes"));
    try {
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);

        recipeData = (jsonData['recipes'] as List).map((category) {
          return Recipe.fromJson({
            'id': category['id'] ?? 0,
            'name': category['name'] ?? '',
            'prepTimeMinutes': category['prepTimeMinutes'] ?? 0,
            'cookTimeMinutes': category['cookTimeMinutes'] ?? 0,
            'servings': category['servings'] ?? 0,
            'ingredients': category['ingredients'] ?? "",
            'instructions': category['instructions'] ?? "",
            'difficulty': category['difficulty'] ?? "",
            'cuisine': category['cuisine'] ?? "",
            'caloriesPerServing': category['caloriesPerServing'] ?? 0,
            'image': category['image'] ?? "",
            'userId': category['userId'] ?? 0,
            'reviewCount': category['reviewCount'] ?? 0,
            'rating': category['rating'] ?? 0,
            'tags': category['tags'] ?? "",
            'mealType': category['mealType'] ?? "",
          });
        }).toList();
        //log('RecipeApiDemo==========>>>>>$recipeData');
      }
    } catch (e) {
      log("ERROR===>${e}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.pink,
            title: const Text("Recipe Demo")),
        body: FutureBuilder(
          future: getRecipeData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: recipeData?.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text("${recipeData?[index].id}"),
                        subtitle: Column(
                          children: [
                            Text("${recipeData?[index].name}"),
                            Image.network("${recipeData?[index].image}")
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.purple,
                ),
              );
            }
          },
        ));
  }
}
