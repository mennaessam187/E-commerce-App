import 'package:flutter/material.dart';
import 'package:second_flutter_level/screens/first_screen.dart';
import 'package:second_flutter_level/screens/second_screen.dart';
import 'package:second_flutter_level/screens/welcom_screen.dart';
import 'package:second_flutter_level/user_acount.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: welcom(),
      ),
    );
  }
}
