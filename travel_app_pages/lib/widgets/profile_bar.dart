import 'package:flutter/material.dart';

Widget profileBar() {
  return Row(
    children: [
      const SizedBox(
        width: 30,
      ),
      Image.asset(
        'assets/images/Vectorprofile.png',
        height: 49,
        width: 49,
        fit: BoxFit.contain,
      ),
      const SizedBox(
        width: 16,
      ),
      const Column(
        children: [
          Text(
            "Welcome Back!",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'Gellix',
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Monday,3 October',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(147, 151, 160, 1),
                fontFamily: 'Gellix'),
          )
        ],
      )
    ],
  );
}
