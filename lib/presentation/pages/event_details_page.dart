import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:eventer/presentation/widgets/event_square_thumbnail.dart';
import 'package:eventer/presentation/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({Key? key}) : super(key: key);

  static String route = '/details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundIconButton(
                      icon: const Icon(Icons.keyboard_arrow_left, size: 30.0),
                      color: AppColors.secondaryLight,
                      radius: 50.0,
                      onTap: () {},
                    ),
                    Text('Details', style: AppStyles.header2),
                    RoundIconButton(
                      icon: const Icon(Icons.more_horiz_rounded, size: 30.0),
                      color: AppColors.secondaryLight,
                      radius: 50.0,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              EventSquareThumbnail(
                image: Image.asset('assets/images/lantern-festival.png'),
                title: 'Lantern Festival',
                location: 'Pontianak, Indonesia',
                month: 'Feb',
                day: '12',
                tagged: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
