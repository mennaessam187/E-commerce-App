import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/information/Hiles_list.dart';
import 'package:second_flutter_level/information/coeshes_list.dart';
import 'package:second_flutter_level/information/plauses_list.dart';
import 'package:second_flutter_level/information/watches_list.dart';
import 'package:second_flutter_level/user_acount.dart';
//import 'package:second_flutter_level/widgets/detales.dart';
//import 'package:second_flutter_level/widgets/item.dart';
import 'package:second_flutter_level/widgets/item_watches_cat.dart';
import 'package:second_flutter_level/widgets/widget_bestsalling.dart';
/*
class myfirstscreen extends StatefulWidget {
  const myfirstscreen({super.key});

  @override
  State<myfirstscreen> createState() => _myfirstscreenState();
}

class _myfirstscreenState extends State<myfirstscreen> {
  List<String> l1 = [
    "Watches",
    "Heilse",
    "Plause",
    "Coeshes",
  ];
  List<String> l2 = [
    "images/watch11.jpeg",
    "images/woman1.jpeg",
    "images/p11.jpeg",
    "images/shoes2.jpeg",
  ];
  GlobalKey<ScaffoldState> keyq = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyq,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.black12,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                "My Account",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipOval(
                  child: Image.asset(
                    "images/per.jpeg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
              title: Text(
                "${firstName} ${secondName}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("$email"),
              trailing: Text("${selectGender}"),
            ),
          ],
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(
            children: [
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(colormanager.searchColor),
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.black45),
                          prefixIcon: Icon(Icons.search),
                          alignLabelWithHint: false,
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              keyq.currentState!.openEndDrawer();
                            });
                          },
                          icon: const Icon(
                            Icons.menu_open,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                child: const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                //height: 120,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 20,
                      );
                    },
                    itemCount: l1.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => waychcat()));
                          });
                        },
                        child: Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color(colormanager.searchColor),
                                radius: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    l2[index],
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                              Text(l1[index])
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Best Salling",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
              ),
              bestsalling(),
            ],
          ),
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/information/watches_list.dart';
import 'package:second_flutter_level/widgets/widget_bestsalling.dart';
//import 'package:second_flutter_level/screens/waychcat.dart';

class myfirstscreen extends StatefulWidget {
  const myfirstscreen({super.key});

  @override
  State<myfirstscreen> createState() => _myfirstscreenState();
}

class _myfirstscreenState extends State<myfirstscreen> {
  List<String> l1 = [
    "Watches",
    "Heilse",
    "Plause",
    "Coeshes",
  ];
  List<String> l2 = [
    "images/watch11.jpeg",
    "images/woman1.jpeg",
    "images/p1.jpeg",
    "images/shoes2.jpeg",
  ];

  List<List<dynamic>> categories = [
    list1, // Watches
    list2, // Heilse
    list3, // Plause
    list4, // Coeshes
  ];

  GlobalKey<ScaffoldState> keyq = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyq,
      backgroundColor: Color.fromARGB(255, 218, 192, 153),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              color: Color.fromARGB(255, 122, 77, 10),
              alignment: Alignment.center,
              child: const Text(
                "My Account",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Container(
                width: 60,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipOval(
                  child: Image.asset(
                    "images/menna.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
              title: Text(
                "${firstName} ${secondName}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("$email"),
              trailing: Text("${selectGender}"),
            ),
          ],
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(
            children: [
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(colormanager.searchColor),
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.black45),
                          prefixIcon: Icon(Icons.search),
                          alignLabelWithHint: false,
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Container(
                          width: 50,
                          height: 50,
                          child: ClipOval(
                            child: Image.asset(
                              "images/pty.jpg",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                child: const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                    itemCount: l1.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => waychcat(
                                category: categories[index],
                                categoryName: l1[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color(colormanager.searchColor),
                                radius: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    l2[index],
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                              Text(l1[index])
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.birthday,
                  ),
                ),
              ),
              bestsalling(),
            ],
          ),
        ),
      ),
    );
  }
}
