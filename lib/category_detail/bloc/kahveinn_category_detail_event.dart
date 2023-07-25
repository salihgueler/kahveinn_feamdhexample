part of 'kahveinn_category_detail_bloc.dart';

abstract class KahveinnCategoryDetailEvent extends Equatable {
  const KahveinnCategoryDetailEvent();

  @override
  List<Object> get props => [];
}

class GetCategoryContentByCategoryId extends KahveinnCategoryDetailEvent {
  const GetCategoryContentByCategoryId(this.categoryId);

  final String categoryId;

  @override
  List<Object> get props => [categoryId];
}

class GetCategoryTitleByCategoryId extends KahveinnCategoryDetailEvent {
  const GetCategoryTitleByCategoryId(this.categoryId);

  final String categoryId;

  @override
  List<Object> get props => [categoryId];
}
