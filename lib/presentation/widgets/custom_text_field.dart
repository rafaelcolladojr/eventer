import 'package:eventer/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.label,
    this.hint,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  final Widget? label;
  final String? hint;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: label,
      title: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: AppColors.primaryLight,
          ),
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontSize: 14.0,
        ),
        onChanged: onChanged,
      ),
      tileColor: AppColors.foreground,
      contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
      horizontalTitleGap: 0.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
    );
  }
}
