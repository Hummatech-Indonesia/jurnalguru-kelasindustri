import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../utilities/extensions.dart';

class ImagePickerDialog extends StatelessWidget {
  const ImagePickerDialog({super.key});

  static Future<ImageSource?> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => const ImagePickerDialog(),
    );
  }

  static Future<File?> pick(BuildContext context) async {
    final source = await show(context);

    if (source == null) return null;

    final file = await ImagePicker().pickImage(source: source);

    if (file == null) return null;

    final compressed = await FlutterImageCompress.compressAndGetFile(
      file.path,
      '${file.path}.jpg',
      quality: 50,
    );

    if (compressed == null) return null;

    return File(compressed.path);
  }

  @override
  Widget build(BuildContext context) {
    // return Container(child: const Text("Test"));

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
            8.heightBox,
            Text(
              'Pilih dari',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            22.heightBox,
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera_alt_rounded),
                    label: const Text('Kamera'),
                  ),
                ),
                8.widthBox,
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label: const Text('Galeri'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
