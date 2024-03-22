import 'package:flutter/material.dart';

Widget customTabBar() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Text(
            "#Health",
            style: TextStyle(
                fontFamily: 'Gellix',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF9397A0)),
          ),
          SizedBox(
            width: 38,
          ),
          Text(
            "#Music",
            style: TextStyle(
                fontFamily: 'Gellix',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF9397A0)),
          ),
          SizedBox(
            width: 37,
          ),
          Text(
            "#Technology",
            style: TextStyle(
                fontFamily: 'Gellix',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF9397A0)),
          ),
          SizedBox(
            width: 39,
          ),
          Text(
            "#Sports",
            style: TextStyle(
                fontFamily: 'Gellix',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF9397A0)),
          ),
        ],
      ),
    ),
  );
}
