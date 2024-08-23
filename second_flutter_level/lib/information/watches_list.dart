import 'package:flutter/material.dart';
import 'package:second_flutter_level/constant_color.dart';

class Watches {
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
  Watches({
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

List<Watches> list1 = [
  Watches(
    Price: "150",
    SubTitle: "this is perfect",
    Title: "Clasic Shoes ",
    image: "images/watch1.jpeg",
    firstColor: colormanager.brawn,
    secondColor: colormanager.white,
    size1: 28,
    size2: 38,
    size3: 41,
    size4: 35,
  ),
  Watches(
    Price: "200",
    SubTitle: "this is perfect",
    Title: "Accesories",
    image: "images/watch2.jpeg",
    firstColor: colormanager.red,
    secondColor: colormanager.green,
    size1: 28,
    size2: 38,
    size3: 41,
    size4: 35,
  ),
  Watches(
    Price: "150",
    SubTitle: "this is",
    Title: "Dress",
    image: "images/watch3.jpeg",
    firstColor: colormanager.black,
    secondColor: colormanager.orange,
    size1: 28,
    size2: 38,
    size3: 41,
    size4: 35,
  ),
  Watches(
    Price: "150",
    SubTitle: "this is",
    Title: "Shoes",
    image: "images/watch4.jpeg",
    firstColor: colormanager.gray,
    secondColor: colormanager.green,
    size1: 28,
    size2: 38,
    size3: 41,
    size4: 35,
  ),
  Watches(
    Price: "150",
    SubTitle: "this is perfect",
    Title: "Watch",
    image: "images/watch4.jpeg",
    firstColor: colormanager.red,
    secondColor: colormanager.white,
    size1: 28,
    size2: 38,
    size3: 41,
    size4: 35,
  ),
  Watches(
    Price: "200",
    SubTitle: "this is",
    Title: "Watch",
    image: "images/watch5.jpeg",
    firstColor: colormanager.red,
    secondColor: colormanager.white,
    size1: 28,
    size2: 38,
    size3: 41,
    size4: 35,
  ),
  Watches(
    Price: "700",
    SubTitle: "this is",
    Title: "Plause",
    image: "images/watch6.jpeg",
    firstColor: colormanager.red,
    secondColor: colormanager.white,
    size1: 28,
    size2: 38,
    size3: 41,
    size4: 35,
  ),
  Watches(
    Price: "150",
    SubTitle: "this is",
    Title: "Shoes",
    image: "images/watch7.jpeg",
    firstColor: colormanager.red,
    secondColor: colormanager.white,
    size1: 28,
    size2: 38,
    size3: 41,
    size4: 35,
  ),
  Watches(
    Price: "150",
    SubTitle: "this is perfect",
    Title: "Hiles",
    image: "images/watch8.jpeg",
    firstColor: colormanager.red,
    secondColor: colormanager.white,
    size1: 28,
    size2: 38,
    size3: 41,
    size4: 35,
  ),
  Watches(
    Price: "200",
    SubTitle: "this is",
    Title: "Plause",
    image: "images/watch11.jpeg",
    firstColor: colormanager.red,
    secondColor: colormanager.white,
    size1: 28,
    size2: 38,
    size3: 41,
    size4: 35,
  ),
];
