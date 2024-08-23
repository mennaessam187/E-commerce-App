import 'package:flutter/material.dart';
import 'package:second_flutter_level/information/watches_list.dart';
//import 'package:second_flutter_level/constant_color.dart';
//import 'package:second_flutter_level/information/watches_list.dart';
import 'package:second_flutter_level/widgets/detales.dart';
import 'package:second_flutter_level/widgets/item_second_screen.dart';

/*
class mysecondscreen extends StatelessWidget {
  final Detales list1;

  const mysecondscreen({super.key, required this.list1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Color(colormanager.searchColor),
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.commit_sharp,
              color: Colors.black,
              size: 40,
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Gipsy",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Bee",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 119, 78, 15),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_basket_rounded))
        ],
      ),
      body: Item2(
        list1: list1,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.plagiarism_rounded), label: "plag"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Personal"),
        ],
      ),
    );
  }
}
*/

class mysecondscreen extends StatelessWidget {
  final Detales list1;

  const mysecondscreen({
    super.key,
    required this.list1,
  });

  @override
  Widget build(BuildContext context) {
    return Item2(list1: list1);
  }
}
