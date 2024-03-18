import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_pages/screens/home_page.dart';
import 'package:travel_app_pages/screens/place_detail_page.dart';
import 'package:travel_app_pages/screens/social_media_page.dart';

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
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/Vectorhome.png')),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  'assets/images/Groupicon2.png',
                )),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/Groupbell.png')),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/Groupperson.png')),
                label: '',
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => _screens[index]));
            },
            selectedItemColor: const Color(0xFF5474FD),
            unselectedItemColor: const Color(0xFF9397A0)));
  }
}
