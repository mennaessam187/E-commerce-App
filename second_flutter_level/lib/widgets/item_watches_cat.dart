import 'package:flutter/material.dart';
import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/screens/second_screen.dart';
import 'package:second_flutter_level/widgets/detales.dart';

class waychcat extends StatefulWidget {
  final List<dynamic> category;
  final String categoryName;

  const waychcat({
    Key? key,
    required this.category,
    required this.categoryName,
  }) : super(key: key);

  @override
  State<waychcat> createState() => _waychcatState();
}

class _waychcatState extends State<waychcat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 192, 153),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 218, 192, 153),
        centerTitle: true,
        title: Text(
          widget.categoryName,
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.57,
          ),
          itemBuilder: (context, index) {
            final item = widget.category[index];
            final detalesItem = convertToDetales(item);
            return GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            mysecondscreen(list1: detalesItem)),
                  );
                });
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
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: CircleAvatar(
                          radius: 80,
                          child: Image.asset(
                            "${item.image}",
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    height: 250,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(18, 44, 43, 43),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 20),
                            child: Text(
                              "${item.Title}",
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text("${item.SubTitle}"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, bottom: 3),
                            child: Container(
                              width: 80,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 143, 95, 22),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "\$${item.Price}",
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
          itemCount: widget.category.length,
        ),
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
