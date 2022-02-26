import 'package:eventer/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeBottomTabBar extends StatelessWidget {
  const HomeBottomTabBar({
    Key? key,
    required this.icons,
  }) : super(key: key);

  final List<IconData> icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.foreground,
      child: TabBar(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        unselectedLabelColor: AppColors.unselectedBottomNavigationIcon,
        labelColor: AppColors.selectedBottomNavigationIcon,
        indicatorColor: Colors.transparent,
        tabs: icons.map((e) => Tab(icon: Icon(e, size: 28.0))).toList(),
      ),
    );
  }
}
