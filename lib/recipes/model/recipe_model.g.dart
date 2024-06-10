// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      prepTimeMinutes: (json['prepTimeMinutes'] as num?)?.toInt(),
      cookTimeMinutes: (json['cookTimeMinutes'] as num?)?.toInt(),
      servings: (json['servings'] as num?)?.toInt(),
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instructions: (json['instructions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      difficulty: json['difficulty'] as String?,
      cuisine: json['cuisine'] as String?,
      caloriesPerServing: (json['caloriesPerServing'] as num?)?.toInt(),
      image: json['image'] as String?,
      userId: (json['userId'] as num?)?.toInt(),
      reviewCount: (json['reviewCount'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      mealType: (json['mealType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'prepTimeMinutes': instance.prepTimeMinutes,
      'cookTimeMinutes': instance.cookTimeMinutes,
      'servings': instance.servings,
      'ingredients': instance.ingredients,
      'instructions': instance.instructions,
      'difficulty': instance.difficulty,
      'cuisine': instance.cuisine,
      'caloriesPerServing': instance.caloriesPerServing,
      'image': instance.image,
      'userId': instance.userId,
      'reviewCount': instance.reviewCount,
      'rating': instance.rating,
      'mealType': instance.mealType,
      'tags': instance.tags,
    };
