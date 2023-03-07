// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_smart_home/src/screens/home/temperature_widget.dart';
import 'package:flutter_smart_home/src/utils/icons.dart';

import 'equipment_widget.dart';
import 'menu_widget.dart';
import 'user_widget.dart';

class Equipment {
  String name;
  bool active;
  String icon;

  Equipment({
    required this.name,
    required this.active,
    required this.icon,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Equipment> _gridItems = [
    Equipment(name: 'Air \nConditioner', active: true, icon: FIcons.IconAirConditioner),
    Equipment(name: 'Smart \nLamp', active: false, icon: FIcons.IconSmartLamp),
    Equipment(name: 'Smart \nTv', active: false, icon: FIcons.IconSmartTv),
    Equipment(name: 'Google \nSmart Home', active: false, icon: FIcons.IconGoogleSmartHome),
  ];

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
                  mainAxisExtent: 180
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return EquipmentWidget(
                      name: _gridItems[index].name,
                      active: _gridItems[index].active,
                      icon: _gridItems[index].icon,
                    );
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