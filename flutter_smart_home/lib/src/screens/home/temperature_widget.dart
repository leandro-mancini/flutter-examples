import 'package:flutter/material.dart';

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        left: 14,
        right: 14,
        bottom: 16
      ),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: Color(0xFF435C49),
        borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/Sunny_Windy.png', height: 60,),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Sunny', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),),
                      SizedBox(height: 6,),
                      Text('Lagos, Nigeria', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),)
                    ],
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '13',
                    style: TextStyle(
                      fontSize: 56,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    '°C',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('16 km', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),),
                  Text('Visibility', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('48%', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),),
                  Text('Humidty', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('18 km/h', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),),
                  Text('W. Force', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('1009 hPa', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),),
                  Text('Pressure', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}