import 'package:flutter/material.dart';

import '../../../utilities/extensions.dart';
import '../../theme/color_pallete.dart';

class MultiSelectDialog<T> extends StatefulWidget {
  final String title;
  final List<DropdownMenuItem<T>> options;
  final List<DropdownMenuItem<T>> selectedValues;

  const MultiSelectDialog({
    super.key,
    required this.title,
    required this.options,
    this.selectedValues = const [],
  });

  static Future<List<DropdownMenuItem<T>>?> show<T>({
    required BuildContext context,
    required String title,
    required List<DropdownMenuItem<T>> options,
    List<DropdownMenuItem<T>> selectedValues = const [],
  }) async {
    final result = await showDialog(
      context: context,
      builder: (context) => MultiSelectDialog<T>(
        title: title,
        options: options,
        selectedValues: selectedValues,
      ),
    );

    if (result != null) {
      return result as List<DropdownMenuItem<T>>?;
    }
    return null;
  }

  @override
  State<MultiSelectDialog<T>> createState() => _MultiSelectDialogState<T>();
}

class _MultiSelectDialogState<T> extends State<MultiSelectDialog<T>> {
  late List<DropdownMenuItem<T>> _selectedValues = widget.selectedValues;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: _buildList(),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Batal",
            style:
                context.text.bodyMedium?.withColor(ColorPallete.onSurfaceHint),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(_selectedValues);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: context.color.primary,
            foregroundColor: context.color.onPrimary,
          ),
          child: const Text("Simpan"),
        ),
      ],
    );
  }

  Widget _buildList() {
    final selectedValues = _selectedValues.map((e) => e.value).toList();

    if (widget.options.isEmpty) {
      return Text(
        "Tidak ada data",
        style: context.text.bodyMedium?.withColor(ColorPallete.onSurfaceHint),
      );
    }

    return SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.options.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
              value: selectedValues.contains(widget.options[index].value),
              onChanged: (value) {
                final List<DropdownMenuItem<T>> selectedValues;

                if (value == true) {
                  selectedValues = [..._selectedValues, widget.options[index]];
                } else {
                  selectedValues = [
                    for (final e in _selectedValues)
                      if (e.value != widget.options[index].value) e
                  ];
                }

                setState(() {
                  _selectedValues = selectedValues;
                });
              },
              title: widget.options[index].child,
            );
          },
        ),
      ),
    );
  }
}
