import 'package:eventer/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class EventerApp extends StatelessWidget {
  const EventerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eventer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.route: (_) => const HomePage(),
      },
      initialRoute: HomePage.route,
    );
  }
}
