/*import 'package:flutter/material.dart';
import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/widgets/detales.dart'; // Import Detales class

class CartPage extends StatefulWidget {
  final List<Detales> cartItems;

  const CartPage({super.key, required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double getTotalPrice() {
    return widget.cartItems
        .fold(0, (total, item) => total + double.parse("${item.Price}"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colormanager.searchColor),
      appBar: AppBar(
        backgroundColor: Color(colormanager.searchColor),
        title: const Text(
          'Shopping Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.cartItems.length,
                itemBuilder: (context, index) {
                  final item = widget.cartItems[index];
                  return ListTile(
                    leading: Image.asset(
                      "${item.image}",
                    ),
                    title: Text(
                      "${item.Title}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: Text("${item.SubTitle} - \$${item.Price}"),
                    trailing: Text(
                      "\$${item.Price}",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 119, 78, 15)),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 260,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              alignment: Alignment.center,
              child: Text(
                'Total: \$${getTotalPrice().toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/widgets/detales.dart'; // Import Detales class

class CartPage extends StatefulWidget {
  final List<Detales> cartItems;

  const CartPage({super.key, required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Method to calculate the total price of items in the cart
  double getTotalPrice() {
    return widget.cartItems
        .fold(0, (total, item) => total + double.parse("${item.Price}"));
  }

  // Method to remove an item from the cart
  void _removeItem(int index) {
    setState(() {
      widget.cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colormanager.searchColor),
      appBar: AppBar(
        backgroundColor: Color(colormanager.searchColor),
        title: const Text(
          'Shopping Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.grey, // Color of the divider
                    thickness: 1, // Thickness of the divider line
                  );
                },
                itemCount: widget.cartItems.length,
                itemBuilder: (context, index) {
                  final item = widget.cartItems[index];
                  return ListTile(
                    leading: Image.asset(
                      "${item.image}",
                    ),
                    title: Text(
                      "${item.Title}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: Text("${item.SubTitle} - \$${item.Price}"),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete,
                          color: Color.fromARGB(255, 121, 74, 4)),
                      onPressed: () => _removeItem(index),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 260,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              alignment: Alignment.center,
              child: Text(
                'Total: \$${getTotalPrice().toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
