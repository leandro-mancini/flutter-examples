import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EquipmentWidget extends StatefulWidget {
  const EquipmentWidget({Key? key}) : super(key: key);

  @override
  State<EquipmentWidget> createState() => _EquipmentWidgetState();
}

class _EquipmentWidgetState extends State<EquipmentWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: isActive ? const Color(0xFFFEB81C) : const Color(0xFF4F7D96),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))
              ),
            ),
            const SizedBox(height: 14,),
            const Text(
              'Smart \nLamp',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 14,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  isActive ? 'On' : 'Off',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    activeColor: const Color(0xFFF8C85C),
                    thumbColor: Colors.white,
                    trackColor: const Color(0xFF9EC9DF),
                    value: isActive,
                    onChanged: (bool value) {
                      setState(() {
                        isActive = value;
                      });
                    }
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}