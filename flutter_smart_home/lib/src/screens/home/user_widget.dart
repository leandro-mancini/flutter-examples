import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 48,
        top: 36
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Welcome, Arya!',
                style: TextStyle(
                  color: Color(0xFF21252A),
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: 4,),
              Text(
                'Let’s manage your smart home',
                style: TextStyle(
                  color: Color(0xFF79828F)
                ),
              )
            ],
          ),
          const SizedBox(
            width: 52,
            height: 52,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200'),
              backgroundColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}