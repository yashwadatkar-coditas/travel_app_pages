import 'package:flutter/material.dart';

Widget socialMediaPostCard() {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))),
    elevation: 0,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(2),
      child: Row(
        children: [
          Image.asset(
            'assets/images/monument2.png',
            width: 100,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'News: Politics',
                style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Putin to host ceremony \n annexing occupied Ukrainia...",
                style: TextStyle(
                    fontFamily: 'gellix',
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset('assets/images/Groupcalender.png'),
                  SizedBox(width: 4),
                  Text(
                    '16th May',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Gellix',
                        color: Color(0xFF9397A0)),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Image.asset('assets/images/Groupclock.png'),
                  SizedBox(width: 4),
                  Text(
                    '09 : 32 pm',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Gellix',
                        color: Color(0xFF9397A0)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
