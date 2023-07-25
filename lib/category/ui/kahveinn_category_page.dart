import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kahveinn/category/bloc/kahveinn_category_page_bloc.dart';
import 'package:kahveinn/core/domain/category_repository.dart';
import 'package:kahveinn/core/ui/hoverable_card.dart';
import 'package:kahveinn/core/ui/kahveinn_base_page.dart';

class KahveinnCategoryPage extends StatelessWidget {
  const KahveinnCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return KahveinnBasePage(
      child: BlocProvider(
        create: (_) => KahveinnCategoryPageBloc(
          context.read<CategoryRepository>(),
        )..add(const GetCategories()),
        child: BlocBuilder<KahveinnCategoryPageBloc, KahveinnCategoryPageState>(
          builder: ((context, state) {
            if (state.status == KahveinnCategoryPageStatus.initial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final categories = state.categories;
              return Center(
                child: Wrap(
                  spacing: 16,
                  children: categories
                      .map(
                        (category) => HoverableCard(
                          title: category.title,
                          imageUrl: category.categoryImageUrl,
                          onTap: () {
                            context.go('/detail/${category.id}');
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
