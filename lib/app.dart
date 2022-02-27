import 'package:eventer/core/constants/app_themes.dart';
import 'package:eventer/presentation/pages/event_details_page.dart';
import 'package:eventer/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';

class EventerApp extends StatelessWidget {
  const EventerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eventer',
      theme: ThemeData(appBarTheme: AppThemes.appBarTheme),
      routes: {
        MainPage.route: (_) => const MainPage(),
        EventDetailsPage.route: (_) => const EventDetailsPage(),
      },
      initialRoute: MainPage.route,
    );
  }
}
