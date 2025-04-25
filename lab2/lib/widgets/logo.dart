import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab2/constants/assets.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

@override
Widget build(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Image.asset(Assets.logo, height: 68),
      ),
      Stack(
        children: [
          Text(
            'RECEPT',
            style: GoogleFonts.monoton(
              color: const Color.fromARGB(255, 3, 28, 58),
              fontSize: 48,
            ),
          ),
          Transform.rotate(
            angle: -20 * pi / 180, // Convert degrees to radians,
            child: Padding(padding: EdgeInsets.only(left: 115, top: 30),
              child: Text(
                'Sök',
                  style: GoogleFonts.pacifico(
                  fontSize: 64, 
                  color: Color(0xFFFFAC33)
                  )
              ),
            ),
          ),
        ],
      ),
    ],
 );
}
}