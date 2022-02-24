import 'package:eventer/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 36.0,
        selectedItemColor: AppColors.selectedBottomNavigationIcon,
        unselectedItemColor: AppColors.unselectedBottomNavigationIcon,
        type: BottomNavigationBarType.fixed,
        items: [
          Icons.house_rounded,
          Icons.airplane_ticket_rounded,
          Icons.calendar_view_day,
          Icons.person,
        ]
            .map((e) => BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Icon(e),
                ),
                label: ''))
            .toList());
  }
}
