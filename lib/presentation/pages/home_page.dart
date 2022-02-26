import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_numbers.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:eventer/presentation/widgets/custom_text_field.dart';
import 'package:eventer/presentation/widgets/event_square_thumbnail.dart';
import 'package:eventer/presentation/widgets/section_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(AppNumbers.mainPadding),
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
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Current Location',
                          style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w700, fontSize: 18.0),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_pin, color: AppColors.primaryLight),
                          Text(
                            'Pontianak, Indonesia',
                            style: AppStyles.subtitle,
                          ),
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 24.0,
                    backgroundColor: AppColors.profileCircle,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
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
          height: 300.0,
          child: ListView.separated(
            itemBuilder: (_, __) => const EventSquareThumbnail(),
            separatorBuilder: (_, __) => const Spacer(),
            itemCount: 1,
          ),
        ),
      ],
    );
  }
}
