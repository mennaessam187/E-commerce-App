//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:second_flutter_level/screens/first_screen.dart';
import 'package:second_flutter_level/user_acount.dart';

class welcom extends StatefulWidget {
  const welcom({super.key});

  @override
  State<welcom> createState() => _welcomState();
}

class _welcomState extends State<welcom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "images/image4.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
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
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 230),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // جعل النصوص تتماشى مع اليسار
                children: [
                  Text(
                    "Woman's",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // لون النص
                    ),
                  ),
                  Text(
                    "CLOTHES",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: Colors.white, // لون النص
                    ),
                  ),
                  Text(
                    "Friday:August 16,2024",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      // لون النص
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 180),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    print("ok");
                    /*
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const myfirstscreen()));
                        */
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const userAccont()));
                  });
                },
                child: Text(
                  "See More",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.black,
                minWidth: 125,
              ),
            ),
          )
        ],
      ),
    );
  }
}
