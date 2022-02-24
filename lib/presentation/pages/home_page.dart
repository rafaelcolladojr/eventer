import 'package:eventer/presentation/widgets/home_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Eventer'),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(),
      ),
    );
  }
}
