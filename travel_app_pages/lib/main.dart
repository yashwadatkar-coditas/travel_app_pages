import 'package:flutter/material.dart';
import 'package:travel_app_pages/screens/home_page.dart';
import 'package:travel_app_pages/screens/place_detail_page.dart';
import 'package:travel_app_pages/screens/social_media_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
