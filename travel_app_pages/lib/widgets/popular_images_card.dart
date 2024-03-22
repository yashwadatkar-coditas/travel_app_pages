import 'package:flutter/material.dart';

Widget popularImageCard(String imageUrl) {
  return SizedBox(
    width: 255,
    height: 143,
    child: Card(
      shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    ),
  );
}
