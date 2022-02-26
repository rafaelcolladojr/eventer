import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_numbers.dart';
import 'package:eventer/presentation/widgets/custom_text_field.dart';
import 'package:eventer/presentation/widgets/event_horizontal_thumbnail.dart';
import 'package:eventer/presentation/widgets/event_square_thumbnail.dart';
import 'package:eventer/presentation/widgets/location_tag.dart';
import 'package:eventer/presentation/widgets/section_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<EventSquareThumbnail> popularEvents = [
    EventSquareThumbnail(
      image: Image.asset(
        'assets/images/lantern-festival.png',
      ),
      title: 'Lantern Festival',
      location: 'Pontianak, Indonesia',
      month: 'Feb',
      day: '12',
    ),
    EventSquareThumbnail(
      image: Image.asset(
        'assets/images/dancing-festival.png',
      ),
      title: 'Dancing Festival',
      location: 'Pontianak, Indonesia',
      month: 'Feb',
      day: '14',
    ),
  ];

  final List<EventHorizontalThumbnail> monthEvents = [
    EventHorizontalThumbnail(
      image: Image.asset('assets/images/western-festival.png'),
      title: 'Western Festival',
      location: 'Pontianak, Indonesia',
      month: 'Feb',
      day: '12',
    ),
    EventHorizontalThumbnail(
      image: Image.asset('assets/images/focus-study.png'),
      title: 'Focus Study',
      location: 'Pontianak, Indonesia',
      month: 'Feb',
      day: '13',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
              itemBuilder: (_, index) => popularEvents[index],
              separatorBuilder: (_, __) => const SizedBox(width: 24.0),
              itemCount: popularEvents.length,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(AppNumbers.mainPaddingHorizontal, 40.0, AppNumbers.mainPaddingHorizontal, 16.0),
            child: Column(
              children: [
                const SectionHeader(title: 'Event This Month'),
                ...monthEvents,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
