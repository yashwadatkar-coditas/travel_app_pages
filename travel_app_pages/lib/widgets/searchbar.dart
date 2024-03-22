import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget searchBar() {
  return Row(
    children: [
      const SizedBox(
        width: 30,
      ),
      Container(
        height: 49,
        width: 315,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 49,
                width: 315,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 13,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search for article...",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Gellix',
                        color: Color(0xFFA7A7A7),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 50,
            ),

            // SizedBox(
            //   height: 49,
            //   width: 47,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       print('button pressed');
            //     },
            //     child: Image.asset(
            //       "assets/images/Groupsearch.png",
            //       color: Colors.black,
            //     ),
            //     style: ElevatedButton.styleFrom(
            //         backgroundColor: Color(0xFF5474FD),
            //         foregroundColor: Colors.white,
            //         shape: ContinuousRectangleBorder(
            //             borderRadius: BorderRadius.circular(40))),
            //   ),
            // )

            GestureDetector(
              onTap: () {},
              child: Container(
                width: 47,
                height: 49,
                decoration: BoxDecoration(
                    color: Color(0xFF5474FD),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset('assets/images/Groupsearch.png'),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
