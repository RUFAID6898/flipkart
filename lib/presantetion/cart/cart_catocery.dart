import 'package:flipkart/screen_main_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartCatoceryWidget extends StatelessWidget {
  const CartCatoceryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.shopping_cart,
          color: Colors.red,
          size: 100,
        ),
        Text(
          'Your basket is empty',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenMainHome(),
                  ));
            },
            child: Text('Shope now'))
      ],
    );
  }
}
