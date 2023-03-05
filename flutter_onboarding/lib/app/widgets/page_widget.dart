import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class PageWidget extends StatelessWidget {
  final String lottie;
  final String title;
  final String description;
  final EdgeInsetsGeometry? padding;

  const PageWidget({Key? key, required this.lottie, required this.title, required this.description, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 46,
        vertical: 86
      ),
      child: Column(
        children: [
          Container(
            padding: padding,
            child: Lottie.asset(lottie, repeat: false),
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 16,),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.black
            ),
          )
        ],
      ),
    );
  }
}