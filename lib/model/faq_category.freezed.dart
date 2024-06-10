// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FaqCategory _$FaqCategoryFromJson(Map<String, dynamic> json) {
  return _FaqCategory.fromJson(json);
}

/// @nodoc
mixin _$FaqCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqCategoryCopyWith<FaqCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqCategoryCopyWith<$Res> {
  factory $FaqCategoryCopyWith(
          FaqCategory value, $Res Function(FaqCategory) then) =
      _$FaqCategoryCopyWithImpl<$Res, FaqCategory>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$FaqCategoryCopyWithImpl<$Res, $Val extends FaqCategory>
    implements $FaqCategoryCopyWith<$Res> {
  _$FaqCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqCategoryImplCopyWith<$Res>
    implements $FaqCategoryCopyWith<$Res> {
  factory _$$FaqCategoryImplCopyWith(
          _$FaqCategoryImpl value, $Res Function(_$FaqCategoryImpl) then) =
      __$$FaqCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$FaqCategoryImplCopyWithImpl<$Res>
    extends _$FaqCategoryCopyWithImpl<$Res, _$FaqCategoryImpl>
    implements _$$FaqCategoryImplCopyWith<$Res> {
  __$$FaqCategoryImplCopyWithImpl(
      _$FaqCategoryImpl _value, $Res Function(_$FaqCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$FaqCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqCategoryImpl implements _FaqCategory {
  const _$FaqCategoryImpl({required this.id, required this.name});

  factory _$FaqCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'FaqCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqCategoryImplCopyWith<_$FaqCategoryImpl> get copyWith =>
      __$$FaqCategoryImplCopyWithImpl<_$FaqCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqCategoryImplToJson(
      this,
    );
  }
}

abstract class _FaqCategory implements FaqCategory {
  const factory _FaqCategory(
      {required final int id, required final String name}) = _$FaqCategoryImpl;

  factory _FaqCategory.fromJson(Map<String, dynamic> json) =
      _$FaqCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$FaqCategoryImplCopyWith<_$FaqCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
