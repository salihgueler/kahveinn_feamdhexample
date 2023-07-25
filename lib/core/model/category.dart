import 'package:equatable/equatable.dart';
import 'package:kahveinn/core/model/category_content.dart';

class Category extends Equatable {
  const Category({
    required this.id,
    required this.title,
    required this.categoryImageUrl,
    required this.contents,
  });

  final String id;
  final String title;
  final String categoryImageUrl;
  final List<CategoryContent> contents;

  @override
  List<Object?> get props => [id, title, categoryImageUrl];

  Category copyWith({
    String? id,
    String? title,
    String? categoryImageUrl,
    List<CategoryContent>? contents,
  }) {
    return Category(
      id: id ?? this.id,
      title: title ?? this.title,
      categoryImageUrl: categoryImageUrl ?? this.categoryImageUrl,
      contents: contents ?? this.contents,
    );
  }
}
