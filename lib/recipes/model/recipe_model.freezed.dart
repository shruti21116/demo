// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
mixin _$Recipe {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get prepTimeMinutes => throw _privateConstructorUsedError;
  int? get cookTimeMinutes => throw _privateConstructorUsedError;
  int? get servings => throw _privateConstructorUsedError;
  List<String>? get ingredients => throw _privateConstructorUsedError;
  List<String>? get instructions => throw _privateConstructorUsedError;
  String? get difficulty => throw _privateConstructorUsedError;
  String? get cuisine => throw _privateConstructorUsedError;
  int? get caloriesPerServing => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  List<String>? get mealType => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res, Recipe>;
  @useResult
  $Res call(
      {int id,
      String? name,
      int? prepTimeMinutes,
      int? cookTimeMinutes,
      int? servings,
      List<String>? ingredients,
      List<String>? instructions,
      String? difficulty,
      String? cuisine,
      int? caloriesPerServing,
      String? image,
      int? userId,
      int? reviewCount,
      double? rating,
      List<String>? mealType,
      List<String>? tags});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res, $Val extends Recipe>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? prepTimeMinutes = freezed,
    Object? cookTimeMinutes = freezed,
    Object? servings = freezed,
    Object? ingredients = freezed,
    Object? instructions = freezed,
    Object? difficulty = freezed,
    Object? cuisine = freezed,
    Object? caloriesPerServing = freezed,
    Object? image = freezed,
    Object? userId = freezed,
    Object? reviewCount = freezed,
    Object? rating = freezed,
    Object? mealType = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      prepTimeMinutes: freezed == prepTimeMinutes
          ? _value.prepTimeMinutes
          : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      cookTimeMinutes: freezed == cookTimeMinutes
          ? _value.cookTimeMinutes
          : cookTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      servings: freezed == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      cuisine: freezed == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String?,
      caloriesPerServing: freezed == caloriesPerServing
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      mealType: freezed == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeImplCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$RecipeImplCopyWith(
          _$RecipeImpl value, $Res Function(_$RecipeImpl) then) =
      __$$RecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      int? prepTimeMinutes,
      int? cookTimeMinutes,
      int? servings,
      List<String>? ingredients,
      List<String>? instructions,
      String? difficulty,
      String? cuisine,
      int? caloriesPerServing,
      String? image,
      int? userId,
      int? reviewCount,
      double? rating,
      List<String>? mealType,
      List<String>? tags});
}

/// @nodoc
class __$$RecipeImplCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$RecipeImpl>
    implements _$$RecipeImplCopyWith<$Res> {
  __$$RecipeImplCopyWithImpl(
      _$RecipeImpl _value, $Res Function(_$RecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? prepTimeMinutes = freezed,
    Object? cookTimeMinutes = freezed,
    Object? servings = freezed,
    Object? ingredients = freezed,
    Object? instructions = freezed,
    Object? difficulty = freezed,
    Object? cuisine = freezed,
    Object? caloriesPerServing = freezed,
    Object? image = freezed,
    Object? userId = freezed,
    Object? reviewCount = freezed,
    Object? rating = freezed,
    Object? mealType = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$RecipeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      prepTimeMinutes: freezed == prepTimeMinutes
          ? _value.prepTimeMinutes
          : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      cookTimeMinutes: freezed == cookTimeMinutes
          ? _value.cookTimeMinutes
          : cookTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      servings: freezed == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      instructions: freezed == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      cuisine: freezed == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String?,
      caloriesPerServing: freezed == caloriesPerServing
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      mealType: freezed == mealType
          ? _value._mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeImpl implements _Recipe {
  const _$RecipeImpl(
      {required this.id,
      this.name,
      this.prepTimeMinutes,
      this.cookTimeMinutes,
      this.servings,
      final List<String>? ingredients,
      final List<String>? instructions,
      this.difficulty,
      this.cuisine,
      this.caloriesPerServing,
      this.image,
      this.userId,
      this.reviewCount,
      this.rating,
      final List<String>? mealType,
      final List<String>? tags})
      : _ingredients = ingredients,
        _instructions = instructions,
        _mealType = mealType,
        _tags = tags;

  factory _$RecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final int? prepTimeMinutes;
  @override
  final int? cookTimeMinutes;
  @override
  final int? servings;
  final List<String>? _ingredients;
  @override
  List<String>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _instructions;
  @override
  List<String>? get instructions {
    final value = _instructions;
    if (value == null) return null;
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? difficulty;
  @override
  final String? cuisine;
  @override
  final int? caloriesPerServing;
  @override
  final String? image;
  @override
  final int? userId;
  @override
  final int? reviewCount;
  @override
  final double? rating;
  final List<String>? _mealType;
  @override
  List<String>? get mealType {
    final value = _mealType;
    if (value == null) return null;
    if (_mealType is EqualUnmodifiableListView) return _mealType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Recipe(id: $id, name: $name, prepTimeMinutes: $prepTimeMinutes, cookTimeMinutes: $cookTimeMinutes, servings: $servings, ingredients: $ingredients, instructions: $instructions, difficulty: $difficulty, cuisine: $cuisine, caloriesPerServing: $caloriesPerServing, image: $image, userId: $userId, reviewCount: $reviewCount, rating: $rating, mealType: $mealType, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.prepTimeMinutes, prepTimeMinutes) ||
                other.prepTimeMinutes == prepTimeMinutes) &&
            (identical(other.cookTimeMinutes, cookTimeMinutes) ||
                other.cookTimeMinutes == cookTimeMinutes) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.caloriesPerServing, caloriesPerServing) ||
                other.caloriesPerServing == caloriesPerServing) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._mealType, _mealType) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      prepTimeMinutes,
      cookTimeMinutes,
      servings,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_instructions),
      difficulty,
      cuisine,
      caloriesPerServing,
      image,
      userId,
      reviewCount,
      rating,
      const DeepCollectionEquality().hash(_mealType),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      __$$RecipeImplCopyWithImpl<_$RecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeImplToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {required final int id,
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
      final List<String>? tags}) = _$RecipeImpl;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$RecipeImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  int? get prepTimeMinutes;
  @override
  int? get cookTimeMinutes;
  @override
  int? get servings;
  @override
  List<String>? get ingredients;
  @override
  List<String>? get instructions;
  @override
  String? get difficulty;
  @override
  String? get cuisine;
  @override
  int? get caloriesPerServing;
  @override
  String? get image;
  @override
  int? get userId;
  @override
  int? get reviewCount;
  @override
  double? get rating;
  @override
  List<String>? get mealType;
  @override
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
