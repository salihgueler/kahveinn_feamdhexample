part of 'kahveinn_category_page_bloc.dart';

enum KahveinnCategoryPageStatus { initial, loaded, error }

class KahveinnCategoryPageState extends Equatable {
  const KahveinnCategoryPageState({
    this.status = KahveinnCategoryPageStatus.initial,
    this.categories = const [],
  });

  final KahveinnCategoryPageStatus status;
  final List<Category> categories;

  @override
  List<Object> get props => [
        status,
        categories,
      ];

  KahveinnCategoryPageState copyWith({
    KahveinnCategoryPageStatus? status,
    List<Category>? categories,
  }) {
    return KahveinnCategoryPageState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
    );
  }
}
