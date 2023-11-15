import 'package:flutter/material.dart';

class ScreenCategories extends StatelessWidget {
  ScreenCategories({super.key});
  List name = [
    'Hp Laptop',
    'Dell Laptop',
    'Camera',
    'T Shirt',
    'headset',
    'headset',
    'headset',
    'headset',
    'headset',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'All Categories',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Row(
        children: [
          Container(
            // height: 100,
            width: 110,
            color: Colors.amber,
            child: SingleChildScrollView(
              child: Column(
                  children: List.generate(
                      10,
                      (index) => LeftSectionWidget(
                          image: 'assets/images/item${index}.jpg',
                          title: 'Offer For You'))),
            ),
          ),
          Container(
              color: Color.fromARGB(255, 251, 248, 248),
              width: 282,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 580,
                    child: GridView.builder(
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/item${index + 1}.jpg'),
                            radius: 35,
                          ),
                          Text(name[index])
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class LeftSectionWidget extends StatelessWidget {
  String title;
  String image;
  LeftSectionWidget({
    required this.image,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 120,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 228, 226, 226),
          border: Border.all(color: Colors.black, width: 0.2)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 30,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
