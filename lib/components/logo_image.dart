import 'package:flutter/material.dart';

Image logoWidget(String image) {
  return Image.asset(
    image,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
  );
}