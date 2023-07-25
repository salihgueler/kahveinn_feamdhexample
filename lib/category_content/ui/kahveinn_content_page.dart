import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kahveinn/category_content/bloc/kahveinn_content_bloc.dart';
import 'package:kahveinn/core/domain/category_repository.dart';
import 'package:kahveinn/core/ui/kahveinn_base_page.dart';
import 'package:kahveinn/router/error_screen.dart';

class KahveinnContentPage extends StatelessWidget {
  const KahveinnContentPage({
    required this.categoryId,
    required this.contentId,
    super.key,
  });

  final String categoryId;
  final String contentId;
  @override
  Widget build(BuildContext context) {
    return KahveinnBasePage(
      child: BlocProvider<KahveinnContentBloc>(
        create: (context) => KahveinnContentBloc(
          context.read<CategoryRepository>(),
        )..add(
            GetContentByContentAndCategoryId(categoryId, contentId),
          ),
        child: BlocBuilder<KahveinnContentBloc, KahveinnContentState>(
          builder: ((context, state) {
            if (state.status == KahveinnContentStatus.initial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status == KahveinnContentStatus.error) {
              return const ErrorScreen(
                errorMessage: 'Content not found.',
                shouldBootstrapWithBasePage: false,
              );
            } else {
              final content = state.content!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(
                    content.image,
                    height: 300,
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      content.title,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      content.description,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
