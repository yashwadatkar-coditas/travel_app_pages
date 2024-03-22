import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app_pages/screens/home_page.dart';
import 'package:travel_app_pages/screens/profile_screen.dart';
import 'package:travel_app_pages/screens/social_media_page.dart';
import 'package:travel_app_pages/widgets/custom_navigation_bar.dart';
import 'package:travel_app_pages/widgets/place_detail_page_card.dart';

class PlaceDetail extends StatefulWidget {
  @override
  State<PlaceDetail> createState() => _PlaceDetailState();
}

class _PlaceDetailState extends State<PlaceDetail> {
  final List<Widget> _screens = [
    HomeScreen(),
    PlaceDetail(),
    SocialMediaPage(),
    ProfileScreen()
  ];
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/image.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 75,
              left: 30,
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 270),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        side: BorderSide(color: Colors.white),
                      ),
                      child: Image(
                        image: AssetImage('assets/images/Groupbookmark.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 430,
              child: Container(
                  height: 500,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xFFFCFCFC),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 27,
                      ),
                      const Text(
                        'Unravel mysteries  \n of the Maldives',
                        style: TextStyle(
                            fontFamily: 'Gellix',
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF19202D)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      placeDetailPageCard(),
                      const SizedBox(
                        height: 2,
                      ),
                      const SizedBox(
                        width: 328,
                        height: 145,
                        child: SingleChildScrollView(
                          child: Text(
                            "Just say anything, George, say what ever's natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch My pine, why you. You space bastard, you killed a pine. You do? Yeah, it's 8:00. Hey, McFly, I thought I told you never ",
                            style: TextStyle(
                                fontFamily: 'Gellix',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF19202D)),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ],
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
