import 'package:flipkart/presantetion/home/screen_home.dart';
import 'package:flipkart/screen_main_home.dart';
import 'package:flutter/material.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Notification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 40,
                child: Icon(
                  Icons.notifications_on_outlined,
                  size: 40,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'No Notification',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Simply browse,create awishilist\nor make a Purchase',
              // style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenMainHome(),
                      ));
                },
                child: Text(
                  'Continue Shopping',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
