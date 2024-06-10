import 'package:freezed_annotation/freezed_annotation.dart';
part 'faq_category.freezed.dart';
part 'faq_category.g.dart';

@freezed
class FaqCategory with _$FaqCategory {
  const factory FaqCategory({
    required int id,
    required String name,
  }) = _FaqCategory;

  factory FaqCategory.fromJson(Map<String, dynamic> json) =>
      _$FaqCategoryFromJson(json);
}