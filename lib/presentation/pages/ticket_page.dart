import 'package:barcode_widget/barcode_widget.dart';
import 'package:eventer/core/constants/app_colors.dart';
import 'package:eventer/core/constants/app_styles.dart';
import 'package:eventer/presentation/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  static String route = '/ticket';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RoundIconButton(
                          icon: const Icon(Icons.keyboard_arrow_left, size: 30.0),
                          color: AppColors.secondaryLight,
                          radius: 50.0,
                          onTap: () => Navigator.pop(context),
                        ),
                        Text('My Ticket', style: AppStyles.header1),
                        const RoundIconButton(
                          icon: Icon(
                            Icons.more_horiz_rounded,
                            size: 30.0,
                            color: Colors.transparent,
                          ),
                          color: Colors.transparent,
                          radius: 50.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.foreground,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(
                              'assets/images/lantern-festival.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Lantern Festival', style: AppStyles.header1.copyWith(fontSize: 20)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                                  child: Container(height: 1.0, color: AppColors.primaryLight.withAlpha(100)),
                                ),
                                SizedBox(
                                  height: 100.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Name', style: AppStyles.subtitle),
                                              Text('Michael Fernando', style: AppStyles.header2),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Time', style: AppStyles.subtitle),
                                              Text('16 : 00 PM', style: AppStyles.header2),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Date', style: AppStyles.subtitle),
                                              Text('February 12, 2022', style: AppStyles.header2),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Seat', style: AppStyles.subtitle),
                                              Text('UNOJI B12', style: AppStyles.header2),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 24.0),
                                  child: BarcodeWidget(data: 'sample barcode', barcode: Barcode.qrCode()),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
