import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ui/providers/common/response_message_provider.dart';
import 'utilities/extensions.dart';

class PageWrapper extends ConsumerWidget {
  final Widget child;

  const PageWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(responseMessageProvider, (_, state) {
      final message = state.message;
      final failure = state.failure;

      if (message != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }

      if (failure != null) {
        failure.snackbar(context);
      }
    });

    return child;
  }
}
