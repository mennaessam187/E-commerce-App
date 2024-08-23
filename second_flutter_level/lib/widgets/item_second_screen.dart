/*
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter/widgets.dart';
import 'package:second_flutter_level/constant_color.dart';
//import 'package:second_flutter_level/information/watches_list.dart';
//import 'package:second_flutter_level/list_information.dart';
import 'package:second_flutter_level/user_acount.dart';

import 'package:second_flutter_level/widgets/detales.dart';

int item = 0;

class Item2 extends StatefulWidget {
  final Detales list1;

  const Item2({super.key, required this.list1});

  @override
  _Item2State createState() => _Item2State();
}

class _Item2State extends State<Item2> {
  int baclindex = 2;
  bool color1 = false;
  bool color2 = false;
  bool color3 = true;

  String me1(Detales d1) {
    if (d1.firstColor == colormanager.black) {
      return "Black";
    } else if (d1.firstColor == colormanager.brawn) {
      return "Brawn";
    } else if (d1.firstColor == colormanager.gray) {
      return "Grey";
    } else if (d1.firstColor == colormanager.orange) {
      return "Orange";
    } else if (d1.firstColor == colormanager.red) {
      return "Red";
    } else
      return "White";
  }

  String me2(Detales d1) {
    if (d1.secondColor == colormanager.black) {
      return "Black";
    } else if (d1.secondColor == colormanager.brawn) {
      return "Brawn";
    } else if (d1.secondColor == colormanager.gray) {
      return "Grey";
    } else if (d1.secondColor == colormanager.orange) {
      return "Orange";
    } else if (d1.secondColor == colormanager.red) {
      return "Red";
    } else
      return "White";
  }

  Color me6(int index) {
    if (index == 0) {
      return Colors.black;
    } else if (index == 1) {
      return Color.fromARGB(255, 214, 136, 19);
    } else {
      return Color(colormanager.searchColor);
    }
  }

  GlobalKey<ScaffoldState> key12 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key12,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: me6(baclindex),
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
              onPressed: () {
                setState(() {
                  key12.currentState!.openEndDrawer();
                });
              },
              icon: Icon(Icons.shopping_basket_rounded))
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Item in the Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  alignment: Alignment.center,
                  child: Text(
                    "$item",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: "Shopping")
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: me6(baclindex),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(colormanager.searchColor),
                        borderRadius: BorderRadius.circular(200),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 2,
                            color: Colors.black26,
                          ),
                        ],
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "${widget.list1.image}",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              baclindex = 0;
                              color3 = false;
                              color1 = true;
                              color2 = false;
                            });
                          },
                          child: Container(
                            width: color1 == true ? 25 : 15,
                            height: color1 == true ? 25 : 15,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: color1 == true ? 3 : 0,
                                color:
                                    color1 == true ? Colors.grey : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              baclindex = 1;
                              color3 = false;
                              color1 = false;
                              color2 = true;
                            });
                          },
                          child: Container(
                            width: color2 == true ? 25 : 15,
                            height: color2 == true ? 25 : 15,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 214, 136, 19),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: color2 == true ? 3 : 0,
                                color:
                                    color2 == true ? Colors.grey : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              baclindex = 2;
                              color3 = true;
                              color1 = false;
                              color2 = false;
                            });
                          },
                          child: Container(
                            width: color3 == true ? 25 : 15,
                            height: color3 == true ? 25 : 15,
                            decoration: BoxDecoration(
                              color: Color(colormanager.searchColor),
                              border: Border.all(
                                width: color3 == true ? 3 : 0,
                                color:
                                    color3 == true ? Colors.grey : Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "${widget.list1.Title}",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("${widget.list1.SubTitle}"),
              Text(
                "\$${widget.list1.Price}",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 147, 91, 7),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Color: ",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 3,
                    color: Color(colormanager.searchColor),
                  ),
                  color: widget.list1.firstColor,
                ),
              ),
              const SizedBox(width: 5),
              Text(me1(widget.list1)),
              const SizedBox(width: 15),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Color(colormanager.searchColor),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: widget.list1.secondColor,
                ),
              ),
              const SizedBox(width: 5),
              Text(me2(widget.list1)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                "Size: ",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${widget.list1.size1}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "${widget.list1.size2}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "${widget.list1.size3}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "${widget.list1.size4}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: MaterialButton(
              color: Colors.black,
              minWidth: 150,
              height: 50,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(221, 177, 250, 250),
                        title: const Text("Warning"),
                        content: const Text(
                          "Are You Sure To Buy this Item",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.pop(context);
                                  item++;
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content:
                                        Text("Item Added Successfully Sir"),
                                    action: SnackBarAction(
                                      label: "OK",
                                      onPressed: () {},
                                    ),
                                  ));
                                });
                              },
                              child: const Text(
                                "Add",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      );
                    });
              },
              child: const Text(
                "Add TO Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_flutter_level/card_page.dart';
import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/information/watches_list.dart';
import 'package:second_flutter_level/user_acount.dart';
import 'package:second_flutter_level/widgets/detales.dart';
/*

int itemCount = 0; // Count of items in the cart
List<Detales> cartItems = []; // List to store items in the cart

class Item2 extends StatefulWidget {
  final Detales list1;

  const Item2({super.key, required this.list1});

  @override
  _Item2State createState() => _Item2State();
}

class _Item2State extends State<Item2> {
  int baclindex = 2;
  bool color1 = false;
  bool color2 = false;
  bool color3 = true;

  String me1(Detales d1) {
    if (d1.firstColor == colormanager.black) {
      return "Black";
    } else if (d1.firstColor == colormanager.brawn) {
      return "Brawn";
    } else if (d1.firstColor == colormanager.gray) {
      return "Grey";
    } else if (d1.firstColor == colormanager.orange) {
      return "Orange";
    } else if (d1.firstColor == colormanager.red) {
      return "Red";
    } else
      return "White";
  }

  String me2(Detales d1) {
    if (d1.secondColor == colormanager.black) {
      return "Black";
    } else if (d1.secondColor == colormanager.brawn) {
      return "Brawn";
    } else if (d1.secondColor == colormanager.gray) {
      return "Grey";
    } else if (d1.secondColor == colormanager.orange) {
      return "Orange";
    } else if (d1.secondColor == colormanager.red) {
      return "Red";
    } else
      return "White";
  }

  Color me6(int index) {
    if (index == 0) {
      return Colors.black;
    } else if (index == 1) {
      return Color.fromARGB(255, 214, 136, 19);
    } else {
      return Color(colormanager.searchColor);
    }
  }

  GlobalKey<ScaffoldState> key12 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key12,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: me6(baclindex),
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
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CartPage(cartItems: cartItems),
                ),
              );
            },
            icon: Icon(Icons.shopping_basket_rounded),
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Items in the Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  alignment: Alignment.center,
                  child: Text(
                    "$itemCount",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          // Navigate to the appropriate page based on index
          if (index == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CartPage(cartItems: cartItems),
              ),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: "Shopping")
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: me6(baclindex),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.4,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(colormanager.searchColor),
                            borderRadius: BorderRadius.circular(200),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 2),
                                blurRadius: 2,
                                color: Colors.black26,
                              ),
                            ],
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              "${widget.list1.image}",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  baclindex = 0;
                                  color3 = false;
                                  color1 = true;
                                  color2 = false;
                                });
                              },
                              child: Container(
                                width: color1 ? 25 : 15,
                                height: color1 ? 25 : 15,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: color1 ? 3 : 0,
                                    color: color1 ? Colors.grey : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  baclindex = 1;
                                  color3 = false;
                                  color1 = false;
                                  color2 = true;
                                });
                              },
                              child: Container(
                                width: color2 ? 25 : 15,
                                height: color2 ? 25 : 15,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 214, 136, 19),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: color2 ? 3 : 0,
                                    color: color2 ? Colors.grey : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  baclindex = 2;
                                  color3 = true;
                                  color1 = false;
                                  color2 = false;
                                });
                              },
                              child: Container(
                                width: color3 ? 25 : 15,
                                height: color3 ? 25 : 15,
                                decoration: BoxDecoration(
                                  color: Color(colormanager.searchColor),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: color3 ? 3 : 0,
                                    color: color3 ? Colors.grey : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Text(
                            "${widget.list1.Title}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "${widget.list1.SubTitle}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            " \$${widget.list1.Price}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: MaterialButton(
                  color: Colors.black,
                  minWidth: 150,
                  height: 50,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Color.fromARGB(221, 177, 250, 250),
                          title: const Text("Warning"),
                          content: const Text(
                            "Are You Sure To Buy this Item",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.pop(context);
                                  itemCount++;
                                  cartItems
                                      .add(widget.list1); // Add item to cart
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Item Added Successfully"),
                                    action: SnackBarAction(
                                      label: "OK",
                                      onPressed: () {},
                                    ),
                                  ));
                                });
                              },
                              child: const Text(
                                "Add",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:second_flutter_level/card_page.dart';
import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/user_acount.dart';
import 'package:second_flutter_level/widgets/detales.dart';

import 'package:flutter/material.dart';
import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/widgets/detales.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/user_acount.dart';
import 'package:second_flutter_level/widgets/detales.dart';

import 'package:flutter/material.dart';
import 'package:second_flutter_level/widgets/detales.dart';
//import 'cart_page.dart'; // Import the Cart Page

int itemCount = 0; // Global count of items in the cart
List<Detales> cartItems = []; // List to store items in the cart

class Item2 extends StatefulWidget {
  final Detales list1;

  const Item2({super.key, required this.list1});

  @override
  _Item2State createState() => _Item2State();
}

class _Item2State extends State<Item2> {
  int baclindex = 2; // Default color index
  bool color1 = false; // Black color
  bool color2 = false; // Brown color
  bool color3 = true; // Default color
  String me1(Detales d1) {
    if (d1.firstColor == colormanager.black) {
      return "Black";
    } else if (d1.firstColor == colormanager.brawn) {
      return "Brawn";
    } else if (d1.firstColor == colormanager.gray) {
      return "Grey";
    } else if (d1.firstColor == colormanager.orange) {
      return "Orange";
    } else if (d1.firstColor == colormanager.red) {
      return "Red";
    } else
      return "White";
  }

  String me2(Detales d1) {
    if (d1.secondColor == colormanager.black) {
      return "Black";
    } else if (d1.secondColor == colormanager.brawn) {
      return "Brawn";
    } else if (d1.secondColor == colormanager.gray) {
      return "Grey";
    } else if (d1.secondColor == colormanager.orange) {
      return "Orange";
    } else if (d1.secondColor == colormanager.red) {
      return "Red";
    } else
      return "White";
  }

  // Determine the background color based on index
  Color me6(int index) {
    switch (index) {
      case 0:
        return Colors.black;
      case 1:
        return Color.fromARGB(255, 214, 136, 19); // Brown
      default:
        return Color(colormanager.searchColor); // Default color
    }
  }

  GlobalKey<ScaffoldState> key7 = GlobalKey();
  // Handle bottom navigation tap
  void _onBottomNavTap(int index) {
    if (index == 1) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CartPage(cartItems: cartItems),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key7,
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              color: Color.fromARGB(255, 122, 77, 10),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
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
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: Text(
                      "$email",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text(
                      "${selectGender}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Items in the Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 122, 77, 10),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    alignment: Alignment.center,
                    child: Text(
                      "$itemCount",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: me6(baclindex),
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.commit_sharp, color: Colors.black, size: 40),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Gipsy",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Bee",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 119, 78, 15)),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                key7.currentState!.openEndDrawer();
              });
            },
            icon: const Icon(Icons.shopping_basket_rounded),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: _onBottomNavTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout), label: "Shopping"),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: me6(baclindex),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.4,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(colormanager.searchColor),
                          borderRadius: BorderRadius.circular(200),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 2),
                                blurRadius: 2,
                                color: Colors.black26)
                          ],
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            "${widget.list1.image}",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                baclindex = 0;
                                color3 = false;
                                color1 = true;
                                color2 = false;
                              });
                            },
                            child: Container(
                              width: color1 ? 25 : 15,
                              height: color1 ? 25 : 15,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: color1 ? 3 : 0,
                                    color: color1 ? Colors.grey : Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                baclindex = 1;
                                color3 = false;
                                color1 = false;
                                color2 = true;
                              });
                            },
                            child: Container(
                              width: color2 ? 25 : 15,
                              height: color2 ? 25 : 15,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 214, 136, 19),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: color2 ? 3 : 0,
                                    color: color2 ? Colors.grey : Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                baclindex = 2;
                                color3 = true;
                                color1 = false;
                                color2 = false;
                              });
                            },
                            child: Container(
                              width: color3 ? 25 : 15,
                              height: color3 ? 25 : 15,
                              decoration: BoxDecoration(
                                color: Color(colormanager.searchColor),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: color3 ? 3 : 0,
                                    color: color3 ? Colors.grey : Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
          Text(
            "${widget.list1.Title}",
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "${widget.list1.SubTitle}",
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          Text(
            "\$${widget.list1.Price}",
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Color: ",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: widget.list1.firstColor,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 3, color: Color(colormanager.searchColor)),
                    ),
                  ),
                  Text(me1(widget.list1)),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: widget.list1.secondColor,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 3, color: Color(colormanager.searchColor)),
                    ),
                  ),
                  Text(me2(widget.list1)),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "size: ",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                  "${widget.list1.size1} | ${widget.list1.size2} | ${widget.list1.size3} | ${widget.list1.size4}"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: MaterialButton(
              color: Colors.black,
              minWidth: 150,
              height: 50,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Color.fromARGB(255, 171, 108, 15),
                      title: const Text(
                        "Warning",
                        style: TextStyle(color: Colors.white),
                      ),
                      content: const Text(
                        "Are You Sure To Buy this Item",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Cancel",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              itemCount++;
                              cartItems.add(widget.list1); // Add item to cart
                              Navigator.pop(context); // Close dialog
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      const Text("Item Added Successfully"),
                                  action: SnackBarAction(
                                      label: "OK", onPressed: () {}),
                                ),
                              );
                            });
                          },
                          child: const Text("Add",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text("Add To Cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ),
          ),
        ],
      ),
    );
  }
}

Detales convertToDetales(dynamic item) {
  return Detales(
    Price: item.Price,
    SubTitle: item.SubTitle,
    Title: item.Title,
    image: item.image,
    firstColor: item.firstColor,
    secondColor: item.secondColor,
    size1: item.size1,
    size2: item.size2,
    size3: item.size3,
    size4: item.size4,
  );
}
