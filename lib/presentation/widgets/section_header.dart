import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyles.header2),
        TextButton(
          child: const Text('View All'),
          onPressed: onPressed,
          style: ButtonStyle(
            foregroundColor: MaterialStateColor.resolveWith((states) => AppColors.primaryLight),
          ),
        ),
      ],
    );
  }
}
