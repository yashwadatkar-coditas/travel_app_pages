import 'package:flutter/material.dart';

Widget customCard() {
  return Card(
      color: Colors.white,
      elevation: 0.2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/cardImage.png',
              // width: 231,
              // fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              "Feel the thrill on the only \n surf simulator in Maldives 2022",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  fontFamily: 'Gellix',
                  color: Color(0xFF19202D)),
            ),
            const SizedBox(
              height: 19,
            ),
            Row(
              children: [
                Image.asset('assets/images/Vectorsang_dong.png'),
                const SizedBox(
                  width: 12,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sang Dong-Min',
                      style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    Text(
                      'Sep 9, 2022',
                      style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF9397A0)),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 61,
                ),
                Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                      color: Color(0xFFEFF5F4),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.25),
                    child: Image.asset('assets/images/Vectormessage.png'),
                  ),
                )
              ],
            )
          ],
        ),
      ));
}
