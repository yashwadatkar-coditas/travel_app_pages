import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget videoCards() {
  return Card(
    color: Colors.white,
    elevation: 0.2,
    child: Padding(
      padding: const EdgeInsets.all(9),
      child: Row(
        children: [
          Image.asset(
            'assets/images/Vectorvideo.png',
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            children: [
              const Text(
                'Top Trending \n Islands in 2022',
                style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  Image.asset('assets/images/Groupeye.png'),
                  const SizedBox(
                    width: 4.5,
                  ),
                  const Text(
                    '40,999',
                    style: TextStyle(
                        fontFamily: 'Gellix',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9397A0)),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
