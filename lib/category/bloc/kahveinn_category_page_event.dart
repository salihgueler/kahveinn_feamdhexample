part of 'kahveinn_category_page_bloc.dart';

abstract class KahveinnCategoryPageEvent extends Equatable {
  const KahveinnCategoryPageEvent();

  @override
  List<Object> get props => [];
}

class GetCategories extends KahveinnCategoryPageEvent {
  const GetCategories();
}
