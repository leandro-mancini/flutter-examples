import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: Color(0xFFFE844B),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Lottie.asset('assets/lottie/sun_animation.json', height: 100),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 12, bottom: 20, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Cloudy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      '18 Feb 2022',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'Jagakarsa, Jakarta',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                ),
                const Text(
                  '28 C',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}