import 'package:flutter/material.dart';

Widget socialMediaProfileBar() {
  return Row(
    children: [
      SizedBox(
        width: 30,
      ),
      Image.asset(
        'assets/images/Vectorelly.png',
        width: 70,
        fit: BoxFit.contain,
      ),
      SizedBox(
        width: 16,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Elly Byers",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'Gellix',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Author & Writer',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(147, 151, 160, 1),
                fontFamily: 'Gellix'),
          )
        ],
      ),
      SizedBox(
        width: 36,
      ),
      SizedBox(
        width: 109,
        height: 42,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Following',
            style: TextStyle(
                fontSize: 12,
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w500),
          ),
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              backgroundColor: Color(0xFF5474FD),
              foregroundColor: Colors.white),
        ),
      )
    ],
  );
}
