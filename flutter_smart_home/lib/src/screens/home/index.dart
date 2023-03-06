import 'package:flutter/material.dart';
import 'package:flutter_smart_home/src/screens/home/temperature_widget.dart';

import 'user_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserWidget(),
            ),
            SliverToBoxAdapter(
              child: TemperatureWidget(),
            ),
          ],
        ),
      ),
    );
  }
}