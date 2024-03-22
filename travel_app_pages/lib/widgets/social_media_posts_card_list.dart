import 'package:flutter/cupertino.dart';
import 'package:travel_app_pages/widgets/social_media_followers_card.dart';
import 'package:travel_app_pages/widgets/socialmedia_posts_card.dart';

Widget socialMediaPostCardList() {
  return ListView.builder(
    itemCount: 2,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: socialMediaPostCard(),
      );
    },
  );
}
