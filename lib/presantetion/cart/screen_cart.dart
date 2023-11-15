import 'package:flipkart/presantetion/cart/cart_catocery.dart';
import 'package:flipkart/presantetion/cart/cart_flip.dart';
import 'package:flutter/material.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('My Cart'),
        bottom: TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
          Tab(
            text: 'Flipkart',
          ),
          Tab(
            text: 'Category',
          )
        ]),
      ),
      body: TabBarView(children: [CartFlipWidget(), CartCatoceryWidget()]),
    );
  }
}
