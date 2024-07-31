import 'package:flutter/material.dart';

import '../../utilities/extensions.dart';
import '../theme/color_pallete.dart';

class UIDropdownFormField<T> extends StatefulWidget {
  final String? label;
  final String? hint;
  final bool obscureText;
  final InputDecoration? decoration;
  final bool readOnly;
  final Widget Function(BuildContext context)? formBuilder;
  final List<DropdownMenuItem<T>> options;
  final Function(T)? onChanged;

  const UIDropdownFormField({
    super.key,
    this.label,
    this.hint,
    this.obscureText = false,
    this.decoration,
    this.readOnly = false,
    this.formBuilder,
    this.options = const [],
    this.onChanged,
  });

  @override
  State<UIDropdownFormField<T>> createState() => _UIDropdownFormFieldState<T>();
}

class _UIDropdownFormFieldState<T> extends State<UIDropdownFormField<T>> {
  late bool _isObscure = widget.obscureText;

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
          DropdownButtonFormField<T>(
            decoration: widget.decoration ??
                InputDecoration(
                  labelText: widget.hint,
                  labelStyle: context.text.bodyMedium
                      ?.withColor(ColorPallete.onSurfaceHint),
                ),
            onChanged: (value) {
              widget.onChanged?.call(value as T);
            },
            items: widget.options,
          ),
      ],
    );
  }

  Widget _buildIcon() {
    return IconButton(
      icon: Icon(
        _isObscure ? Icons.visibility : Icons.visibility_off,
        color: ColorPallete.onSurfaceHint,
      ),
      onPressed: () {
        setState(() {
          _isObscure = !_isObscure;
        });
      },
    );
  }
}
