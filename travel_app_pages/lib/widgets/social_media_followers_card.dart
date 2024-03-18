import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget socialMediaCard() {
  return const SizedBox(
    height: 100,
    width: 325,
    child: Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      color: Color(0xFF19202D),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '54.21k',
                style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Followers',
                style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          VerticalDivider(
            color: Color(0xFFC1D4F9),
            indent: 30,
            endIndent: 30,
            width: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '2.11k',
                style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Posts',
                style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          VerticalDivider(
            color: Color(0xFFC1D4F9),
            indent: 30,
            endIndent: 30,
            width: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '36.40k',
                style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Followers',
                style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
