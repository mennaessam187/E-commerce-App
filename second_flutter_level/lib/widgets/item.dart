import 'package:flutter/material.dart';
import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/list_information.dart';
import 'package:second_flutter_level/screens/second_screen.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.57,
        ),
        itemBuilder: (context, index) {
          final detales = list5[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => mysecondscreen(
                          list1: detales,
                        )),
              );
            },
            child: Stack(
              children: [
                Container(
                  width: 190,
                  height: 350,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 205, 146),
                      borderRadius: BorderRadius.circular(30)),
                ),
                Container(
                  width: 190,
                  height: 250,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 126, 88, 32),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: CircleAvatar(
                          radius: 80,
                          child: Image.asset(
                            "${detales!.image}",
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ),
                Container(
                  width: 190,
                  height: 250,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(18, 44, 43, 43),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  //right: 0,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 20),
                          child: Text(
                            "${detales!.Title}",
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("${detales!.SubTitle}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 80,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 143, 95, 22),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "\$${detales!.Price}",
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: list5.length);
  }
}
