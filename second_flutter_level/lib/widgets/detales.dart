import 'package:flutter/material.dart';

class Detales {
  String? image;
  String? Title;
  String? SubTitle;
  String? Price;
  Color? firstColor;
  Color? secondColor;
  int? size1;
  int? size2;
  int? size3;
  int? size4;
  Detales({
    required this.Price,
    required this.SubTitle,
    required this.Title,
    required this.image,
    required this.firstColor,
    required this.secondColor,
    this.size1,
    this.size2,
    this.size3,
    this.size4,
  });
}
