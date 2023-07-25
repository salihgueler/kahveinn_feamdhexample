import 'package:equatable/equatable.dart';

class CategoryContent extends Equatable {
  const CategoryContent({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
  });

  final String id;
  final String title;
  final String description;
  final String image;
  @override
  List<Object?> get props => [
        id,
        title,
        description,
        image,
      ];
}
