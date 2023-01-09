import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class BaseTextField extends StatelessWidget {
  BaseTextField(
      {required this.isObscure,
      required this.hintText,
      this.suffixIcon,
      required this.controller,
      required this.textInputAction,
      required this.maxLength,
      required this.textColor,
      this.textInputType,
      this.validator,
      this.prefixIcon,
      this.onChanged});
  final bool isObscure;
  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final int maxLength;
  final Function(String)? onChanged;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      maxLength: maxLength,
      autocorrect: false,
      validator: validator,
      keyboardType: textInputType ?? TextInputType.text,
      textInputAction: textInputAction,
      controller: controller,
      obscureText: isObscure,
      style: Theme.of(context).textTheme.overline?.copyWith(color: textColor),
      decoration: InputDecoration(
        counterText: '',
        prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: prefixIcon,
            ),
        prefixIconConstraints: const BoxConstraints(maxHeight: 18),
        // alignLabelWithHint: true,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle:
            Theme.of(context).textTheme.overline?.copyWith(color: Colors.white),
        suffixIconConstraints: const BoxConstraints(maxHeight: 18),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: highlightedTextColor),
        ),
      ),
    );
  }
}
