import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app_pages/screens/home_page.dart';
import 'package:travel_app_pages/screens/place_detail_page.dart';
import 'package:travel_app_pages/screens/profile_screen.dart';
import 'package:travel_app_pages/widgets/custom_navigation_bar.dart';
import 'package:travel_app_pages/widgets/popular_images_card.dart';

import 'package:travel_app_pages/widgets/social_media_followers_card.dart';
import 'package:travel_app_pages/widgets/social_media_posts_card_list.dart';
import 'package:travel_app_pages/widgets/social_media_profilebar.dart';
import 'package:travel_app_pages/widgets/socialmedia_posts_card.dart';

class SocialMediaPage extends StatefulWidget {
  const SocialMediaPage({super.key});

  @override
  State<SocialMediaPage> createState() => _SocialMediaPageState();
}

class _SocialMediaPageState extends State<SocialMediaPage> {
  final List<Widget> _screens = [
    const HomeScreen(),
    PlaceDetail(),
    const SocialMediaPage(),
    const ProfileScreen()
  ];
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                socialMediaProfileBar(),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      'Every piece of chocolate I ever ate is getting back \n at me.. desserts are very revengeful..',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF9397A0)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 33,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    socialMediaCard(),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    SizedBox(width: 42),
                    Text(
                      "Elly's Post",
                      style: TextStyle(
                          fontFamily: 'Gellix',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF19202D)),
                    ),
                    SizedBox(width: 197),
                    Text(
                      'View All',
                      style: TextStyle(
                          fontFamily: 'Gellix',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5474FD)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          socialMediaPostCard(),
                          const SizedBox(
                            height: 5,
                          ),
                          socialMediaPostCard()
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      'Popular From Elly',
                      style: TextStyle(
                          fontFamily: 'Gellix',
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                //
                const SizedBox(height: 18),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      popularImageCard('assets/images/popular1.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      popularImageCard('assets/images/popular4.jpeg')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          screens: _screens,
          onTap: (index) {
            if (index != _currentIndex) {
              setState(() {
                _currentIndex = index;
              });
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => _screens[index]));
            }
          },
        ));
  }
}
