import 'package:flipkart/itemdetils/ittemdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartFlipWidget extends StatelessWidget {
  CartFlipWidget({super.key});
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
    return ListView(
      children: [
        ListTile(
          leading: Text(
            'Deliver to:',
            style: TextStyle(fontSize: 20),
          ),
          title: Text(
            'Wayanad',
            style: TextStyle(fontSize: 20),
          ),
          trailing: ElevatedButton(onPressed: () {}, child: Text('Change')),
        ),
        Divider(
          thickness: 7,
          color: Color.fromARGB(255, 232, 228, 228),
        ),
        Container(
          height: 200,
          // color: Colors.amber,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 29, top: 20, left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemDetails(
                                  images: "assets/images/item3.jpg"),
                            ));
                      },
                      child: Container(
                        height: 120,
                        width: 70,
                        // color: Colors.black,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/item3.jpg'))),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        ' CAMERA ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text('100 pixel '),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate,
                            size: 17,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star_rate,
                            size: 17,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star_rate,
                            size: 17,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star_rate,
                            size: 17,
                            color: Colors.green,
                          ),
                          Text('(1235)')
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 196,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.save_outlined),
                        Text('Save for Later')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 207, 205, 205))),
                    height: 50,
                    width: 196,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.delete_outline_rounded),
                        Text('Remove  ')
                      ],
                    ),
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
            'Suggested for You',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        LimitedBox(
          maxHeight: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              8,
              (index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetails(
                            images: 'assets/images/item${index + 1}.jpg'),
                      ));
                },
                child: SuggestedWidgets(
                  name: name[index],
                  image: 'assets/images/item${index + 1}.jpg',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SuggestedWidgets extends StatelessWidget {
  String image;
  String name;

  SuggestedWidgets({
    required this.image,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 260,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black87),
          // color: Colors.amber,
        ),
        child: Column(
          children: [
            Container(
              width: 140,
              height: 150,
              // color: Colors.black12,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            Text(name),
            Text('1224'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  height: 40,
                  width: 100,
                  child:
                      TextButton(onPressed: () {}, child: Text('Add to cart'))),
            )
          ],
        ),
      ),
    );
  }
}
