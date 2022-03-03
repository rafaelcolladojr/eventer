import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:eventer/presentation/pages/event_details_page.dart';
import 'package:eventer/presentation/widgets/date_tag.dart';
import 'package:eventer/presentation/widgets/location_tag.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventSquareThumbnail extends StatelessWidget {
  const EventSquareThumbnail({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.month,
    required this.day,
    this.tagged = true,
    this.onTap,
  }) : super(key: key);

  final Image image;
  final String title;
  final String location;
  final String month;
  final String day;
  final bool? tagged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: AppColors.foreground,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Hero(
            tag: title,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: image,
                  ),
                ),
                Positioned(
                  top: 8.0,
                  right: 8.0,
                  child: DateTag(month: month, day: day),
                ),
                Visibility(
                  visible: tagged!,
                  child: Positioned(
                    bottom: -35.0,
                    child: Container(
                      width: 210.0,
                      height: 70.0,
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: AppColors.foreground,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title, style: AppStyles.header3),
                              LocationTag(location: location),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: AppColors.secondaryLight,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(FontAwesomeIcons.route, color: AppColors.secondary, size: 18.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
