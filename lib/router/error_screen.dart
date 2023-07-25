import 'package:flutter/material.dart';
import 'package:kahveinn/core/ui/kahveinn_base_page.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    required this.errorMessage,
    this.shouldBootstrapWithBasePage = true,
    Key? key,
  }) : super(key: key);

  final String errorMessage;
  final bool shouldBootstrapWithBasePage;
  @override
  Widget build(BuildContext context) {
    return shouldBootstrapWithBasePage
        ? KahveinnBasePage(
            child: Center(
              child: Text(errorMessage),
            ),
          )
        : Center(
            child: Text(errorMessage),
          );
  }
}
