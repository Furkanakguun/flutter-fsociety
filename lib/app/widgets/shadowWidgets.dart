import 'package:flutter/material.dart';

List<BoxShadow> shadowdown() {
  return [
    BoxShadow(
        offset: Offset(3, 3),
        spreadRadius: 0,
        blurRadius: 3,
        color: Colors.black26)
  ];
}

List<BoxShadow> shadowcard() {
  return [
    BoxShadow(
        offset: Offset(3, 3),
        spreadRadius: 0,
        blurRadius: 3,
        color: Colors.black26),
    BoxShadow(
        offset: Offset(-3, -3),
        spreadRadius: 0,
        blurRadius: 3,
        color: Colors.grey)
  ];
}
