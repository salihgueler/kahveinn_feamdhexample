part of 'kahveinn_category_detail_bloc.dart';

enum KahveinnCategoryDetailStatus { initial, loaded, error }

class KahveinnCategoryDetailState extends Equatable {
  const KahveinnCategoryDetailState({
    this.status = KahveinnCategoryDetailStatus.initial,
    this.contents = const [],
    this.title,
  });

  final KahveinnCategoryDetailStatus status;
  final List<CategoryContent> contents;
  final String? title;

  @override
  List<Object?> get props => [
        title,
        contents,
        status,
      ];
  KahveinnCategoryDetailState copyWith({
    KahveinnCategoryDetailStatus? status,
    List<CategoryContent>? contents,
    String? title,
  }) {
    return KahveinnCategoryDetailState(
      status: status ?? this.status,
      contents: contents ?? this.contents,
      title: title ?? this.title,
    );
  }
}
