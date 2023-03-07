import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F7FC),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/lottie/onboarding_animation.json'),
          Padding(
            padding: const EdgeInsets.only(
              top: 0,
              left: 58.0,
              right: 58.0,
              bottom: 58.0
            ),
            child: Column(
              children: [
                const Text(
                  'Welcome to',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF21252A),
                    fontSize: 32,
                    fontWeight: FontWeight.w700
                  ),
                ),
                const Text(
                  'Smart Home app',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFE844B),
                    fontSize: 32,
                    fontWeight: FontWeight.w700
                  ),
                ),
                const SizedBox(height: 12,),
                const Text(
                  'Smart Home can change way you live in the future',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF79828F),
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  ),
                ),
                const SizedBox(height: 58,),
                SizedBox(
                  width: 260,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pushNamed('/home'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFE844B),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      elevation: 0,
                    ),
                    child: const Text('GET STARTED',)
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}