import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:eventer/presentation/widgets/date_tag.dart';
import 'package:eventer/presentation/widgets/location_tag.dart';
import 'package:flutter/material.dart';

class EventHorizontalThumbnail extends StatelessWidget {
  const EventHorizontalThumbnail({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.month,
    required this.day,
  }) : super(key: key);

  final Image image;
  final String title;
  final String location;
  final String month;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.foreground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: AspectRatio(
        aspectRatio: 14 / 4,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: image,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title, style: AppStyles.header3),
                      LocationTag(location: location),
                      const Text('Placeholder Users'),
                    ],
                  ),
                ),
              ),
              DateTag(color: AppColors.secondaryLight, month: month, day: day),
            ],
          ),
        ),
      ),
    );
  }
}
