import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class DateTag extends StatelessWidget {
  const DateTag({
    Key? key,
    required this.month,
    required this.day,
  }) : super(key: key);

  final String month;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      decoration: BoxDecoration(
        color: AppColors.foreground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Feb', style: AppStyles.thumbnailDateMonth),
            Text('12', style: AppStyles.thumbnailDateDay),
          ],
        ),
      ),
    );
  }
}
