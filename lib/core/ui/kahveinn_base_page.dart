// ignore_for_file: unused_element

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class KahveinnBasePage extends StatelessWidget {
  const KahveinnBasePage({
    required this.child,
    super.key,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _DynamicallyScrollableView(
        header: const _KahveinnAppBar(),
        footer: const _KahveinnBottomBar(),
        child: child,
      ),
    );
  }
}

class _KahveinnAppBar extends StatelessWidget {
  const _KahveinnAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: ColoredBox(
        color: Colors.brown,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              context.go('/');
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Kahveinn',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _KahveinnBottomBar extends StatelessWidget {
  const _KahveinnBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: kBottomNavigationBarHeight,
      child: ColoredBox(
        color: Colors.brown,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: _ClickableBottomBarContent()),
        ),
      ),
    );
  }
}

class _ClickableBottomBarContent extends StatelessWidget {
  const _ClickableBottomBarContent({super.key});

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Source of the content here is ',
        style:
            Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
        children: [
          TextSpan(
            text: 'Taste of Home.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
            mouseCursor: SystemMouseCursors.click,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl(
                  Uri.parse(
                    'https://www.tasteofhome.com/article/types-of-coffee/',
                  ),
                );
              },
          ),
          TextSpan(
            text: '\nFor any further inquires, please contact me via ',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Colors.white),
          ),
          TextSpan(
            text: 'email.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
            mouseCursor: SystemMouseCursors.click,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                final Uri emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: 'muhammedsalihguler@gmail.com',
                  query: _encodeQueryParameters(<String, String>{
                    'subject': 'Regarding to Kahveinn.com',
                  }),
                );
                launchUrl(emailLaunchUri);
              },
          ),
        ],
      ),
    );
  }
}

// ref: https://github.com/flutter/flutter/issues/12650
class _DynamicallyScrollableView extends StatelessWidget {
  const _DynamicallyScrollableView({
    required this.header,
    required this.footer,
    required this.child,
    super.key,
  });

  final Widget child;
  final Widget header;
  final Widget footer;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                header,
                Expanded(child: child),
                footer,
              ],
            ),
          ),
        ),
      );
    });
  }
}
