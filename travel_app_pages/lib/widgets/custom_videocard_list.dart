import 'package:flutter/material.dart';
import 'package:travel_app_pages/widgets/custom_video_card.dart';

Widget customVideoCardList() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 3,
    itemBuilder: (context, index) {
      return videoCards();
    },
  );
}
