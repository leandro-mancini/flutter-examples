import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EquipmentWidget extends StatefulWidget {
  final String name;
  final bool active;
  final String icon;

  const EquipmentWidget({Key? key, required this.name, required this.active, required this.icon}) : super(key: key);

  @override
  State<EquipmentWidget> createState() => _EquipmentWidgetState();
}

class _EquipmentWidgetState extends State<EquipmentWidget> {
  bool isActive = false;

  @override
  void initState() {
    isActive = widget.active;

    super.initState();
  }

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 46,
                  height: 46,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                  padding: const EdgeInsets.all(6),
                  child: Center(
                    child: SvgPicture.asset(widget.icon, color: isActive ? const Color(0xFFFEBB1C) : const Color(0xFF1D305E),),
                  ),
                ),
                const SizedBox(height: 14,),
                Text(
                  widget.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
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