import 'package:flipkart/presantetion/account/screen_account.dart';
import 'package:flipkart/presantetion/cart/screen_cart.dart';
import 'package:flipkart/presantetion/categories/screen_categories.dart';
import 'package:flipkart/presantetion/home/screen_home.dart';
import 'package:flipkart/presantetion/notification/screen_notification.dart';
import 'package:flutter/material.dart';

class ScreenMainHome extends StatelessWidget {
  ScreenMainHome({super.key});
  ValueNotifier _bottemnotifire = ValueNotifier(0);
  final List screen = [
    ScreenHome(),
    ScreenCategories(),
    ScreenNotification(),
    ScreenAccount(),
    ScreenCart(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _bottemnotifire,
        builder: (context, value, child) {
          return DefaultTabController(
            length: 5,
            child: Scaffold(
              body: screen[value],
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: _bottemnotifire.value,
                  onTap: (value) {
                    _bottemnotifire.value = value;
                  },
                  showUnselectedLabels: true,
                  unselectedItemColor: Colors.black,
                  selectedItemColor: Colors.black,
                  unselectedLabelStyle: TextStyle(color: Colors.black),
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.category), label: 'Categories'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.notifications), label: 'Notification'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.account_box), label: 'Account'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_cart_outlined),
                        label: 'Cart'),
                  ]),
            ),
          );
        });
  }
}
