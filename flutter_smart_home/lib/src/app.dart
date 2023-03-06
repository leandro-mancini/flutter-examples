import 'package:flutter/material.dart';
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
    Text('Notificações'),
    Text('Perfil'),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF435C49),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        elevation: 52,
        notchMargin: 8.0,
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/icon_home.svg',
                  color: selectedIndex == 0 ? const Color(0xFF3C5342) : const Color(0xFFBABDC1),
                ),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/icon_chart.svg',
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
                  'assets/icons/icon_notification.svg',
                  color: selectedIndex == 2 ? const Color(0xFF3C5342) : const Color(0xFFBABDC1),
                ),
                onPressed: () => _onItemTapped(2),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/icon_perfil.svg',
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