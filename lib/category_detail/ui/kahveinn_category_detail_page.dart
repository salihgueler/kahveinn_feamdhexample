import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kahveinn/category_detail/bloc/kahveinn_category_detail_bloc.dart';
import 'package:kahveinn/core/domain/category_repository.dart';
import 'package:kahveinn/core/ui/hoverable_card.dart';
import 'package:kahveinn/core/ui/kahveinn_base_page.dart';
import 'package:kahveinn/router/error_screen.dart';

class KahveinnCategoryDetailPage extends StatelessWidget {
  const KahveinnCategoryDetailPage({
    required this.categoryId,
    super.key,
  });

  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return KahveinnBasePage(
      child: BlocProvider(
        create: (_) => KahveinnCategoryDetailBloc(
          context.read<CategoryRepository>(),
        )..add(GetCategoryContentByCategoryId(categoryId)),
        child: BlocBuilder<KahveinnCategoryDetailBloc,
            KahveinnCategoryDetailState>(
          builder: ((context, state) {
            if (state.status == KahveinnCategoryDetailStatus.initial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status == KahveinnCategoryDetailStatus.error) {
              return const ErrorScreen(
                errorMessage: 'Category Detail not found!',
                shouldBootstrapWithBasePage: false,
              );
            } else {
              final contents = state.contents;
              return Center(
                child: Wrap(
                  spacing: 16,
                  children: contents
                      .map(
                        (content) => HoverableCard(
                          title: content.title,
                          imageUrl: content.image,
                          onTap: () {
                            context.go(
                              '/detail/$categoryId/${content.id}',
                              extra: content,
                            );
                          },
                        ),
                      )
                      .toList(growable: false),
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
