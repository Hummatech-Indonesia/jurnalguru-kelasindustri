import 'package:flutter/material.dart';

import '../../utilities/extensions.dart';
import '../theme/color_pallete.dart';

class UITextFormField extends StatefulWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final bool obscureText;
  final InputDecoration? decoration;
  final bool readOnly;
  final int? minLines;
  final int? maxLines;
  final Widget Function(BuildContext context)? formBuilder;
  final String? Function(String?)? validator;

  const UITextFormField({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.obscureText = false,
    this.decoration,
    this.readOnly = false,
    this.minLines,
    this.maxLines = 1,
    this.formBuilder,
    this.validator,
  });

  @override
  State<UITextFormField> createState() => _UITextFormFieldState();
}

class _UITextFormFieldState extends State<UITextFormField> {
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
          TextFormField(
            controller: widget.controller,
            obscureText: _isObscure,
            readOnly: widget.readOnly,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            validator: widget.validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: (widget.decoration ?? const InputDecoration()).copyWith(
              labelText: widget.hint,
              alignLabelWithHint: true,
              labelStyle: context.text.bodyMedium
                  ?.withColor(ColorPallete.onSurfaceHint),
              suffixIcon: widget.obscureText ? _buildIcon() : null,
            ),
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
