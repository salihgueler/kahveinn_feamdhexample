import 'package:go_router/go_router.dart';
import 'package:kahveinn/category/ui/kahveinn_category_page.dart';
import 'package:kahveinn/category_detail/ui/kahveinn_category_detail_page.dart';
import 'package:kahveinn/category_content/ui/kahveinn_content_page.dart';
import 'package:kahveinn/router/error_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const KahveinnCategoryPage(),
      ),
    ),
    GoRoute(
      path: '/detail/:categoryId',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: KahveinnCategoryDetailPage(
          categoryId: state.pathParameters['categoryId']!,
        ),
      ),
    ),
    GoRoute(
      path: '/detail/:categoryId/:contentId',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: KahveinnContentPage(
          categoryId: state.pathParameters['categoryId']!,
          contentId: state.pathParameters['contentId']!,
        ),
      ),
    ),
  ],
  errorPageBuilder: (context, state) => NoTransitionPage<void>(
    key: state.pageKey,
    child: ErrorScreen(
      errorMessage: state.error.toString(),
    ),
  ),
);
