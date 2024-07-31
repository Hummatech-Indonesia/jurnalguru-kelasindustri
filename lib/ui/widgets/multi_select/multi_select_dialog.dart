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

  SizedBox _buildList() {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.options.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            value: _selectedValues.contains(widget.options[index]),
            onChanged: (value) {
              final selectedValues = [..._selectedValues];

              if (value == true) {
                selectedValues.add(widget.options[index]);
              } else {
                selectedValues.remove(widget.options[index]);
              }

              setState(() {
                _selectedValues = selectedValues;
              });
            },
            title: widget.options[index].child,
          );
        },
      ),
    );
  }
}
