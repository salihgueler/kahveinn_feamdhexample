import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kahveinn/core/domain/category_repository.dart';
import 'package:kahveinn/core/model/category_content.dart';

part 'kahveinn_category_detail_event.dart';
part 'kahveinn_category_detail_state.dart';

class KahveinnCategoryDetailBloc
    extends Bloc<KahveinnCategoryDetailEvent, KahveinnCategoryDetailState> {
  KahveinnCategoryDetailBloc(CategoryRepository categoryRepository)
      : super(const KahveinnCategoryDetailState()) {
    on<GetCategoryContentByCategoryId>((event, emit) {
      final categoryContents =
          categoryRepository.getCategoryContentsByCategoryId(event.categoryId);
      if (categoryContents == null) {
        emit(
          state.copyWith(
            status: KahveinnCategoryDetailStatus.error,
            contents: categoryContents,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: KahveinnCategoryDetailStatus.loaded,
            contents: categoryContents,
          ),
        );
      }
    });
    on<GetCategoryTitleByCategoryId>((event, emit) {
      final categorytitle =
          categoryRepository.getCategoryTitleByCategoryId(event.categoryId);
      emit(
        state.copyWith(
          status: KahveinnCategoryDetailStatus.loaded,
          title: categorytitle,
        ),
      );
    });
  }
}
