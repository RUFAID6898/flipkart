import 'package:flutter/material.dart';

class ScreenAccount extends StatelessWidget {
  const ScreenAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Hi RUFAID'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 33,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.monetization_on,
                    size: 15,
                    color: Colors.amber,
                  ),
                  Text('0')
                ],
              ),
            ),
          )
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Section1ContainerWidgets(
                    icons: Icons.shopping_cart_checkout_sharp, title: 'Orders'),
                Section1ContainerWidgets(
                    icons: Icons.favorite_border, title: 'Orders'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Section1ContainerWidgets(
                    icons: Icons.countertops_outlined, title: 'Coupons'),
                Section1ContainerWidgets(
                    icons: Icons.headset_mic_rounded, title: 'Help center'),
              ],
            )
          ],
        ),
        Divider(
          thickness: 7,
          color: Color.fromARGB(255, 232, 228, 228),
        ),
        ListTile(
          leading: Icon(
            Icons.mark_email_read_rounded,
            color: Colors.amber,
            size: 40,
          ),
          title: Text(
            'Add/Verify your Email',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue)),
            onPressed: () {},
            child: Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
          ),
          subtitle: Text('Get latest update of your orders'),
        ),
        Divider(
          thickness: 7,
          color: Color.fromARGB(255, 232, 228, 228),
        ),
        Container(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Try Flipkart in your language',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.blue)),
                      child: Center(
                        child: Text(
                          'English',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  LanguageSection(
                    Language: 'Malayalam',
                  ),
                  LanguageSection(
                    Language: 'Hindi',
                  ),
                  LanguageSection(
                    Language: '+8 More',
                  )
                ],
              )
            ],
          ),
        ),
        Divider(
          thickness: 7,
          color: Color.fromARGB(255, 232, 228, 228),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Account Settings',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        SettingsSectionWidgets(
            icons: Icons.assistant_outlined, title: 'Flipkart Plus'),
        SettingsSectionWidgets(
            icons: Icons.person_outline_outlined, title: 'Edit Person'),
        SettingsSectionWidgets(
            icons: Icons.wallet_rounded, title: 'Saved Cards & wallets'),
        SettingsSectionWidgets(
            icons: Icons.location_on_outlined, title: 'seved Addresses'),
        SettingsSectionWidgets(
            icons: Icons.language_outlined, title: 'selact language'),
        SettingsSectionWidgets(
            icons: Icons.notification_add_outlined,
            title: 'Notification Settings'),
        Divider(
          thickness: 7,
          color: Color.fromARGB(255, 232, 228, 228),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'My Activity',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        SettingsSectionWidgets(
            icons: Icons.rate_review_outlined, title: 'Reviews '),
        SettingsSectionWidgets(
            icons: Icons.chat_outlined, title: 'Questions & Answers'),
        Divider(
          thickness: 7,
          color: Color.fromARGB(255, 232, 228, 228),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Earn with Flipkart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        SettingsSectionWidgets(
            icons: Icons.star_border, title: 'FlipKart Creator Studio '),
        SettingsSectionWidgets(
            icons: Icons.shop_outlined, title: 'Sell on Flipkaert'),
        Divider(
          thickness: 7,
          color: Color.fromARGB(255, 232, 228, 228),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Feedback & Information',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        SettingsSectionWidgets(
            icons: Icons.edit_document, title: 'Terms,Policies and Licenses '),
        SettingsSectionWidgets(icons: Icons.info_outline, title: 'Browse FAQs'),
        Container(
          color: Color.fromARGB(255, 232, 228, 228),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ButtonStyle(elevation: MaterialStatePropertyAll(6)),
                onPressed: () {},
                child: Text('Log Out')),
          ),
        )
      ]),
    );
  }
}

class SettingsSectionWidgets extends StatelessWidget {
  IconData icons;
  String title;
  SettingsSectionWidgets({
    required this.icons,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icons,
        color: Colors.blue,
        size: 27,
      ),
      title: Text(title),
      trailing: Icon(
        Icons.arrow_forward_ios_sharp,
        size: 17,
      ),
    );
  }
}

class LanguageSection extends StatelessWidget {
  String Language;
  LanguageSection({
    required this.Language,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black)),
        child: Center(
          child: Text(
            Language,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class Section1ContainerWidgets extends StatelessWidget {
  IconData icons;
  String title;
  Section1ContainerWidgets({
    required this.icons,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Color.fromARGB(255, 133, 121, 121))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icons,
                color: Colors.blue,
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
