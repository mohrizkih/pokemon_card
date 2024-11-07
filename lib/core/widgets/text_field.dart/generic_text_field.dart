import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokemon_card/core/widgets/text/text.dart';

class GenericTextField extends StatelessWidget {
  const GenericTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.obsecureText = false,
    this.validator,
    this.keyboardType,
    this.onChanged,
    this.suffix,
    this.prefix,
    this.textInputAction,
    this.readOnly = false,
    this.onTap,
    this.maxLines = 1,
    this.minLines = 1,
    this.style,
    this.inputFormatters,
    this.maxLength,
    this.errorText,
  });

  final TextEditingController? controller;
  final String hintText;
  final int? maxLines;
  final int? minLines;
  final bool obsecureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final Widget? suffix;
  final Widget? prefix;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final TextStyle? style;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onTap: onTap,
      textInputAction: textInputAction,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      style: style,
      readOnly: readOnly,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 23, vertical: 14),
        isDense: true,
        errorText: errorText,
        hintText: hintText,
        hintStyle: T.textpoppinsSetting(size: 14, color: Colors.grey.shade400, letterSpacing: 1),
        prefixIcon: prefix,
        suffixIcon: suffix,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
      ),
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
