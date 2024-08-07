import 'package:flutter/material.dart';

import '../../../utilities/extensions.dart';
import '../../theme/color_pallete.dart';
import '../../theme/theme_constants.dart';
import 'multi_select_dialog.dart';

class UIMultiSelectFormField<T> extends StatefulWidget {
  final String? label;
  final String? hint;
  final InputDecoration? decoration;
  final bool readOnly;
  final Widget Function(BuildContext context)? formBuilder;
  final List<DropdownMenuItem<T>> options;
  final List<T> initialValue;
  final Function(List<T>)? onChanged;

  const UIMultiSelectFormField({
    super.key,
    this.label,
    this.hint,
    this.decoration,
    this.readOnly = false,
    this.formBuilder,
    this.options = const [],
    this.initialValue = const [],
    this.onChanged,
  });

  @override
  State<UIMultiSelectFormField<T>> createState() =>
      _UIMultiSelectFormFieldState<T>();
}

class _UIMultiSelectFormFieldState<T> extends State<UIMultiSelectFormField<T>> {
  List<DropdownMenuItem<T>> _selectedValues = [];

  @override
  initState() {
    super.initState();

    _selectedValues = widget.initialValue.map((e) {
      return widget.options.firstWhere((element) => element.value == e);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: context.text.bodyLarge?.weight(Weight.medium),
          ),
          const SizedBox(height: 4),
        ],
        if (widget.formBuilder != null)
          widget.formBuilder!(context)
        else
          Material(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorPallete.softBorder,
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
                borderRadius: ThemeConstants.mediumRadius,
              ),
              height: 56,
              child: InkWell(
                borderRadius: ThemeConstants.mediumRadius,
                onTap: () async {
                  final result = await MultiSelectDialog.show<T>(
                    context: context,
                    title: widget.label!,
                    options: widget.options,
                    selectedValues: _selectedValues,
                  );

                  if (result != null) {
                    setState(() {
                      widget.onChanged?.call(
                        result.map((e) => e.value!).toList(),
                      );
                      _selectedValues = result;
                    });
                  }
                },
                child: _selectedValues.isEmpty
                    ? _buildHint(context)
                    : _buildContent(),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildContent() {
    return Row(
      children: [
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _selectedValues.length,
            separatorBuilder: (context, index) => 4.widthBox,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemBuilder: (context, index) {
              return InputChip(
                label: Text((_selectedValues[index].child as Text).data ?? '-',
                    style: context.text.bodyMedium?.onPrimaryColor()),
                shape: RoundedRectangleBorder(
                    borderRadius: ThemeConstants.mediumRadius,
                    side: const BorderSide(color: Colors.transparent)),
                color: WidgetStateProperty.all(
                  context.color.primary,
                ),
                deleteIconColor: context.color.onPrimary,
                onDeleted: () {
                  setState(() {
                    _selectedValues = _selectedValues.where((element) {
                      return element != _selectedValues[index];
                    }).toList();

                    widget.onChanged?.call(
                      _selectedValues.map((e) => e.value!).toList(),
                    );
                  });
                },
              );
            },
          ),
        ),
        Container(
          width: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: ThemeConstants.mediumRadius.topRight,
              bottomRight: ThemeConstants.mediumRadius.bottomRight,
            ),
            border: Border(
              left: BorderSide(
                color: ColorPallete.softBorder,
                width: 1,
              ),
            ),
            color: context.color.primary,
          ),
          alignment: Alignment.center,
          child: Text(
            _selectedValues.length.toString(),
            style: context.text.bodyLarge?.weight(Weight.bold).onPrimaryColor(),
          ),
        ),
      ],
    );
  }

  Align _buildHint(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          widget.hint!,
          style: context.text.bodyMedium?.withColor(ColorPallete.onSurfaceHint),
        ),
      ),
    );
  }
}
