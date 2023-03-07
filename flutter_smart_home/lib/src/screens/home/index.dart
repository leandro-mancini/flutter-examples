import 'package:flutter/material.dart';
import 'package:flutter_smart_home/src/screens/home/temperature_widget.dart';

import 'equipment_widget.dart';
import 'menu_widget.dart';
import 'user_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List _gridItems = List.generate(6, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF1F7FC),
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: UserWidget(),
            ),
            const SliverToBoxAdapter(
              child: TemperatureWidget(),
            ),
            const SliverToBoxAdapter(
              child: MenuWidget(),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(
                bottom: 48,
                left: 20,
                right: 20
              ),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.82,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return const EquipmentWidget();
                  },
                  childCount: _gridItems.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}