import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kahveinn/core/domain/category_repository.dart';
import 'package:kahveinn/core/model/category.dart';

part 'kahveinn_category_page_event.dart';
part 'kahveinn_category_page_state.dart';

class KahveinnCategoryPageBloc
    extends Bloc<KahveinnCategoryPageEvent, KahveinnCategoryPageState> {
  KahveinnCategoryPageBloc(CategoryRepository categoryRepository)
      : super(const KahveinnCategoryPageState()) {
    on<GetCategories>((event, emit) {
      emit(
        state.copyWith(
          categories: categoryRepository.categories,
          status: KahveinnCategoryPageStatus.loaded,
        ),
      );
    });
  }
}
