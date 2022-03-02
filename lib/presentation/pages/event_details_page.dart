import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:eventer/presentation/widgets/event_square_thumbnail.dart';
import 'package:eventer/presentation/widgets/location_tag.dart';
import 'package:eventer/presentation/widgets/round_icon_button.dart';
import 'package:eventer/presentation/widgets/ticket_price_bottom_%20bar.dart';
import 'package:eventer/presentation/widgets/users_list_mini.dart';
import 'package:flutter/material.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({Key? key}) : super(key: key);

  static String route = '/details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          onTap: () => Navigator.pop(context),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: SizedBox(
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Lantern Festival', style: AppStyles.header1),
                              const LocationTag(location: 'Pontianak, Indonesia'),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                            decoration: BoxDecoration(
                              color: AppColors.secondaryLight,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text('\$100', style: AppStyles.detailPriceTag),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 16.0),
                            child: SizedBox(
                              width: 130,
                              child: UserListMini(
                                size: 14.0,
                                offset: 18.0,
                                avatars: [
                                  AssetImage('assets/images/profile_4.png'),
                                  AssetImage('assets/images/profile_2.png'),
                                  AssetImage('assets/images/profile_3.png'),
                                  AssetImage('assets/images/profile_1.png'),
                                  AssetImage('assets/images/profile_5.png'),
                                  AssetImage('assets/images/profile_6.png'),
                                ],
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '250+',
                              style: AppStyles.detailText,
                              children: [
                                TextSpan(
                                  text: ' People have joined',
                                  style: AppStyles.subtitle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text('Description', style: AppStyles.header2),
                      RichText(
                        text: TextSpan(
                          text: 'A Chinese traditional festival celebrated on the fifteenth day of the first month in the lunisolar Chinese calendar, during the full moon.',
                          style: AppStyles.eventDescriptionText,
                          children: [
                            TextSpan(text: ' Read More...', style: AppStyles.detailText),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            const TicketPriceBottomBar(
              price: '\$100',
            ),
          ],
        ),
      ),
    );
  }
}
