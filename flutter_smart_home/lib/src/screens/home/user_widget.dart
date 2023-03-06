import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 20
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hi, Bruce!',
                style: TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 32,
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: 8,),
              Text(
                'Good Morning! 🌞️'
              )
            ],
          ),
          const CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage('https://picsum.photos/200'),
            backgroundColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}