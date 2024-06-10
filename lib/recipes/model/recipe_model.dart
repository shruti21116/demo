import 'package:freezed_annotation/freezed_annotation.dart';
part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required int id,
    final String? name,
    final int? prepTimeMinutes,
    final int? cookTimeMinutes,
    final int? servings,
    final List<String>? ingredients,
    final List<String>? instructions,
    final String? difficulty,
    final String? cuisine,
    final int? caloriesPerServing,
    final String? image,
    final int? userId,
    final int? reviewCount,
    final double? rating,
    final List<String>? mealType,
    final List<String>? tags,

  }) =_Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) =>
      _$RecipeFromJson(json);
}