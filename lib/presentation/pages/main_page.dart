import 'package:eventer/presentation/pages/home_page.dart';
import 'package:eventer/presentation/widgets/home_bottom_tab_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                  child: TabBarView(
                children: [
                  HomePage(),
                  Center(child: Text('Coming Soon')),
                  Center(child: Text('Coming Soon')),
                  Center(child: Text('Coming Soon')),
                ],
              )),
              const HomeBottomTabBar(
                icons: [
                  Icons.house_rounded,
                  Icons.airplane_ticket_rounded,
                  Icons.calendar_view_day,
                  Icons.person,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
