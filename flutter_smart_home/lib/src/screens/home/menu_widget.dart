import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Living Room',
      'Kitchen',
      'Bethroom',
      'Washroom',
      'Garage',
      'Gourmet Area',
      'Laundry'
    ];

    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            height: 24,
            margin: index == 0 ? const EdgeInsets.only(
              top: 30, bottom: 30, left: 24, right: 5
            ) : const EdgeInsets.symmetric(
              vertical: 30, horizontal: 5
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: const Color(0xFF4F7D96),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              onPressed: () {},
              child: Text(items[index].toString()),
            ),
          );
        },
      ),
    );
  }
}