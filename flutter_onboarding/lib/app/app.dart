import 'package:flutter/material.dart';

import 'widgets/page_widget.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  final PageController pageController = PageController(initialPage: 0);

  int currentPage = 0;

  List<PageWidget> pages = [
    const PageWidget(
      lottie: 'assets/lottie/animation_1.json',
      title: 'Comida fresca',
      description: 'Lorem ipsum dolor sit amet, consectetur adpiscing elit.'
    ),
    const PageWidget(
      lottie: 'assets/lottie/animation_2.json',
      title: 'Entrega rápida',
      description: 'Lorem ipsum dolor sit amet, consectetur adpiscing elit.'
    ),
    const PageWidget(
      lottie: 'assets/lottie/animation_3.json',
      title: 'Pagamento facilitado',
      description: 'Lorem ipsum dolor sit amet, consectetur adpiscing elit.'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: pages,
            onPageChanged: (int index) {
              setState(() {
                currentPage = index;
              });
            },
          )
        ],
      ),
    );
  }
}