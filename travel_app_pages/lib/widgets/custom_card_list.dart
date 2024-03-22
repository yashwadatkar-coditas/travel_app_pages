import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app_pages/widgets/custom_card.dart';

Widget CustomCardList() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 3,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(5),
        child: customCard(),
      );
    },
  );
  // return ListView(
  //   scrollDirection: Axis.horizontal,
  //   children: [
  //     customCard(),
  //     SizedBox(width: 5), // Add a small horizontal gap between cards
  //     customCard(),
  //     SizedBox(width: 5),
  //     customCard(),
  //   ],
  // );
}
