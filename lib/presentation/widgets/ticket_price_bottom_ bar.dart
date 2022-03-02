import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class TicketPriceBottomBar extends StatelessWidget {
  const TicketPriceBottomBar({
    Key? key,
    required this.price,
    this.height = 80.0,
    this.onTap,
  }) : super(key: key);

  final String price;
  final double? height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 40.0,
      child: SizedBox(
        //height: 80.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text('Total Price', style: AppStyles.subtitle),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '\$100',
                      style: AppStyles.detailPriceTag,
                      children: [
                        TextSpan(
                          text: ' /Person',
                          style: AppStyles.subtitle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(13.0),
                child: Material(
                  color: AppColors.secondary,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      child: Text('Get a Ticket', style: AppStyles.buttonText),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
