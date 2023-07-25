part of 'kahveinn_content_bloc.dart';

abstract class KahveinnContentEvent extends Equatable {
  const KahveinnContentEvent();

  @override
  List<Object> get props => [];
}

class GetContentByContentAndCategoryId extends KahveinnContentEvent {
  const GetContentByContentAndCategoryId(
    this.categoryId,
    this.contentId,
  );
  final String categoryId;
  final String contentId;

  @override
  List<Object> get props => [
        categoryId,
        contentId,
      ];
}
