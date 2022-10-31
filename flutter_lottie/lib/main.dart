import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lottie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'FELIZ DIA DAS BRUXAS 2022',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18
              ),
            ),
            Lottie.network('https://assets10.lottiefiles.com/packages/lf20_zazxqo.json'),
            const Text(
              '@mancini.dev',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12
              ),
            ),
          ],
        ),
      ),
    );
  }
}
