import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class LocationTag extends StatelessWidget {
  const LocationTag({
    Key? key,
    required this.location,
  }) : super(key: key);

  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_pin,
          color: AppColors.primaryLight,
          size: 18.0,
        ),
        Text(
          location,
          style: AppStyles.subtitle,
        ),
      ],
    );
  }
}
