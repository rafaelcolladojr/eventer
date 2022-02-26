import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_numbers.dart';
import 'package:eventer/presentation/widgets/custom_text_field.dart';
import 'package:eventer/presentation/widgets/event_square_thumbnail.dart';
import 'package:eventer/presentation/widgets/location_tag.dart';
import 'package:eventer/presentation/widgets/section_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppNumbers.mainPaddingHorizontal,
            vertical: AppNumbers.mainPaddingVertical,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'Current Location',
                          style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w700, fontSize: 18.0),
                        ),
                      ),
                      const LocationTag(location: 'Pontianak, Indonesia'),
                    ],
                  ),
                  CircleAvatar(
                    radius: 24.0,
                    backgroundColor: AppColors.profileCircle,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 10.0),
                child: CustomTextField(
                  label: Icon(Icons.search_rounded),
                  hint: 'Search event...',
                ),
              ),
              const SectionHeader(title: 'Popular Events'),
            ],
          ),
        ),
        SizedBox(
          height: 250.0,
          child: ListView.separated(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            itemBuilder: (_, __) => const EventSquareThumbnail(),
            separatorBuilder: (_, __) => const SizedBox(width: 24.0),
            itemCount: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 46.0,
            horizontal: AppNumbers.mainPaddingHorizontal,
          ),
          child: Column(
            children: [
              const SectionHeader(title: 'Event This Month'),
            ],
          ),
        ),
      ],
    );
  }
}
