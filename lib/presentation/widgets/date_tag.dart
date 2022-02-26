import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class DateTag extends StatelessWidget {
  const DateTag({
    Key? key,
    this.color,
    required this.month,
    required this.day,
  }) : super(key: key);

  final Color? color;
  final String month;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      decoration: BoxDecoration(
        color: color ?? AppColors.foreground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(month, style: AppStyles.thumbnailDateMonth),
            Text(day, style: AppStyles.thumbnailDateDay),
          ],
        ),
      ),
    );
  }
}
