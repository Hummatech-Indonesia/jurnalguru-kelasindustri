import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../utilities/extensions.dart';
import '../theme/color_pallete.dart';

class UIDatePickerFormField extends StatefulWidget {
  final String? label;
  final String? hint;
  final bool obscureText;
  final InputDecoration? decoration;
  final bool readOnly;
  final Function(DateTime)? onChanged;

  const UIDatePickerFormField({
    super.key,
    this.label,
    this.hint,
    this.obscureText = false,
    this.decoration,
    this.readOnly = false,
    this.onChanged,
  });

  @override
  State<UIDatePickerFormField> createState() => _UIDatePickerFormFieldState();
}

class _UIDatePickerFormFieldState extends State<UIDatePickerFormField> {
  final _dateController = TextEditingController();

  late bool _isObscure = widget.obscureText;

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
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
        TextFormField(
          controller: _dateController,
          readOnly: true,
          decoration: widget.decoration ??
              InputDecoration(
                labelText: widget.hint,
                labelStyle: context.text.bodyMedium
                    ?.withColor(ColorPallete.onSurfaceHint),
                suffixIcon: _buildIcon(),
              ),
          keyboardType: TextInputType.datetime,
          onTap: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(10.years),
            ).then((value) {
              if (value != null) {
                _dateController.text = DateFormat.yMMMd().format(value);
                widget.onChanged?.call(value);
              }
            });
          },
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
