import 'package:flutter/material.dart';

import '../../../../utilities/extensions.dart';

class DeleteJournalModal extends StatelessWidget {
  const DeleteJournalModal({super.key});

  static Future<bool?> show(BuildContext context) {
    return showDialog<bool?>(
      context: context,
      builder: (context) => const Dialog(
        child: DeleteJournalModal(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            22.heightBox,
            Image.asset('assets/images/delete_illustration.png'),
            22.heightBox,
            Text(
              'Yakin ingin menghapus journal?',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            38.heightBox,
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text(
                'Ya Saya Yakin',
                textAlign: TextAlign.center,
              ),
            ),
            8.heightBox,
            FilledButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text(
                'Kembali',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
