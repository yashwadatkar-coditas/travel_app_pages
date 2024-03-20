import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app_pages/screens/place_detail_page.dart';
import 'package:travel_app_pages/screens/profile_screen.dart';
import 'package:travel_app_pages/screens/social_media_page.dart';
import 'package:travel_app_pages/widgets/custom_card_list.dart';
import 'package:travel_app_pages/widgets/custom_navigation_bar.dart';
import 'package:travel_app_pages/widgets/custom_videocard_list.dart';
import 'package:travel_app_pages/widgets/profile_bar.dart';
import 'package:travel_app_pages/widgets/searchbar.dart';
import 'package:travel_app_pages/widgets/tabbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    PlaceDetail(),
    const SocialMediaPage(),
    const ProfileScreen()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        backgroundColor: const Color(0xFFFCFCFC),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                profileBar(),
                const SizedBox(
                  height: 32,
                ),
                searchBar(),
                const SizedBox(
                  height: 15,
                ),
                customTabBar(),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                    height: 330,
                    width: double.infinity,
                    child: CustomCardList()),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Short For You",
                      style: TextStyle(
                          fontFamily: 'Gellix',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF19202D)),
                    ),
                    const SizedBox(
                      width: 175,
                    ),
                    Flexible(
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View All",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF5474FD)),
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 9,
                ),
                SizedBox(
                  height: 100,
                  child: customVideoCardList(),
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
