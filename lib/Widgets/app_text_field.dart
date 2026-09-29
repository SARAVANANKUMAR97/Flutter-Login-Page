import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.hinttext,
      this.controller,
      this.KeyboardType,
      this.obscureText = false,
      required this.textInputAction,
      this.prefixIcon,
      this.suffixIcon});
  final String hinttext;
  final TextEditingController? controller;
  final TextInputType? KeyboardType;
  final bool obscureText;
  final TextInputAction textInputAction;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: AppColor.inputBorder),
    );
    return TextField(
      controller: controller,
      keyboardType: KeyboardType,
      obscureText: obscureText,
      textInputAction: textInputAction,
      style: const TextStyle(color: AppColor.textWhite, fontSize: 15),
      cursorColor: AppColor.primaryStart,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle:
              const TextStyle(color: AppColor.primaryStart, fontSize: 15),
          filled: true,
          fillColor: AppColor.inputFill,
          prefix: prefixIcon,
          suffix: suffixIcon,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          border: border,
          enabledBorder: border,
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide(color: AppColor.primaryEnd))),
    );
  }
}
