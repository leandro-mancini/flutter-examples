import 'package:flutter/material.dart';
import 'package:flutter_smart_home/src/utils/icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'screens/home/index.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int selectedIndex = 0;

  static List<Widget> widgetOptions = const <Widget>[
    HomeScreen(),
    Text('Dashboard'),
    Text('Cameras'),
    Text('Configurações'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      floatingActionButton: SizedBox(
        height: 42,
        width: 42,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    spreadRadius: 0,
                    blurRadius: 14,
                    offset: const Offset(0, 14)
                  )
                ]
              ),
              child: const Icon(Icons.keyboard_voice_outlined, color: Color(0xFFFE8484), size: 32,),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 52,
        color: Colors.white,
        notchMargin: 8.0,
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  FIcons.IconHome,
                  color: selectedIndex == 0 ? const Color(0xFF3C5342) : const Color(0xFFBABDC1),
                ),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  FIcons.IconChart,
                  color: selectedIndex == 1 ? const Color(0xFF3C5342) : const Color(0xFFBABDC1),
                ),
                onPressed: () => _onItemTapped(1),
              ),
              const SizedBox(
                height: 24,
                width: 24,
              ),
              IconButton(
                icon: SvgPicture.asset(
                  FIcons.IconCamera,
                  color: selectedIndex == 2 ? const Color(0xFF3C5342) : const Color(0xFFBABDC1),
                ),
                onPressed: () => _onItemTapped(2),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  FIcons.IconSetting,
                  color: selectedIndex == 3 ? const Color(0xFF3C5342) : const Color(0xFFBABDC1),
                ),
                onPressed: () => _onItemTapped(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}