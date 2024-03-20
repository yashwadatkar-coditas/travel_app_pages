import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_pages/screens/home_page.dart';
import 'package:travel_app_pages/screens/place_detail_page.dart';
import 'package:travel_app_pages/screens/social_media_page.dart';
import 'package:travel_app_pages/widgets/custom_navigation_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    PlaceDetail(),
    SocialMediaPage(),
    ProfileScreen()
  ];
  int _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
