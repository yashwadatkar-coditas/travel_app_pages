import 'package:flutter/cupertino.dart';

Widget placeDetailPageCard() {
  return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFFEEEEEE),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 14, 12, 14),
            child: Row(
              children: [
                Container(
                  height: 26,
                  width: 26,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset('assets/images/Vectorkeanu.png'),
                ),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  'Keanu Carpent May 17',
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9397A0),
                  ),
                ),
                const SizedBox(width: 6),
                Image.asset('assets/images/Vectordot.png'),
                const SizedBox(width: 8),
                const Text(
                  '8 min read',
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9397A0),
                  ),
                ),
              ],
            ),
          )));
}
