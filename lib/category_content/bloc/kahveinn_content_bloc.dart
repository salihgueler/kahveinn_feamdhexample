import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kahveinn/core/domain/category_repository.dart';
import 'package:kahveinn/core/model/category_content.dart';

part 'kahveinn_content_event.dart';
part 'kahveinn_content_state.dart';

class KahveinnContentBloc
    extends Bloc<KahveinnContentEvent, KahveinnContentState> {
  KahveinnContentBloc(CategoryRepository categoryRepository)
      : super(const KahveinnContentState()) {
    on<GetContentByContentAndCategoryId>((event, emit) {
      final content =
          categoryRepository.getCategoryContentByCategoryIdAndContentId(
        event.categoryId,
        event.contentId,
      );
      if (content == null) {
        emit(
          state.copyWith(
            status: KahveinnContentStatus.error,
            content: content,
          ),
        );
      } else {
        emit(state.copyWith(
          status: KahveinnContentStatus.loaded,
          content: content,
        ));
      }
    });
  }
}
