import 'package:flipkart/itemdetils/ittemdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  bool possition = false;
  List ithems = [
    "assets/images/baner1.jpg",
    "assets/images/baner2.jpg",
    "assets/images/baner3.jpg",
    // "assets/images/baner4.jpg",
    // "assets/images/baner5.jpg",
  ];
  List name = [
    'Laptop',
    'Camera',
    'T Shirt',
    'Headset',
    'Headsets',
    'Bote',
    'Net Bant',
    'offer'
  ];
  List prodectname = [
    'Laptop',
    'Camera',
    'Bote',
    'Net Bant',
  ];
  List prodectname2 = [
    'Camera',
    'T Shirt',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          title: Text(
            'FlipKart',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
          bottom: AppBar(
              backgroundColor: Colors.white,
              title: Container(
                height: 40,
                child: TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Prodects',
                  border: OutlineInputBorder(),
                )),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Column(
                  children: [
                    Text(
                      'Brand Mall',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    FlutterSwitch(
                      inactiveText: 'of',
                      activeText: 'of',
                      width: 50,
                      height: 20,
                      value: possition,
                      onToggle: (value) {},
                    )
                  ],
                ),
              )),
          leading: Image.network(
              'https://logos-world.net/wp-content/uploads/2020/11/Flipkart-Emblem.png'),
          expandedHeight: 90,
          pinned: true,
          floating: true,
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: 200,
                color: Color.fromARGB(255, 255, 222, 233),
                child: section1OfferSliderWidget(ithems: ithems),
              ),
              Container(
                color: Color.fromARGB(255, 255, 222, 233),
                height: 200,
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 0.10, crossAxisCount: 4),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemDetails(
                              images: "assets/images/item${index + 2}.jpg",
                            ),
                          ));
                    },
                    child: Section2OfferWidget(
                      name: name[index],
                      image: "assets/images/item${index + 2}.jpg",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/baner2.jpg"),
                        fit: BoxFit.cover),
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 3.0)),
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(6))
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(10),
                    //     bottomRight: Radius.circular(10))
                    ),
                width: 380,
                height: 70,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        3,
                        (index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ItemDetails(
                                          images:
                                              "assets/images/item${index + 6}.jpg"),
                                    ));
                              },
                              child: Section4OfferWidget(
                                image: "assets/images/item${index + 6}.jpg",
                              ),
                            )),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    2,
                    (index) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemDetails(
                                  images: "assets/images/item${index + 3}.jpg"),
                            ));
                      },
                      child: Section5OfferWidget(
                        name: prodectname2[index],
                        images: "assets/images/item${index + 3}.jpg",
                      ),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sponsored',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )),
              CarouselSlider(
                  items: ithems
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: 700,
                                  // height: 800,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          e,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    height: 50,
                                    width: 700,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Deals On PUMA',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 15, 15, 15)),
                                        ),
                                        SizedBox(
                                          width: 180,
                                        ),
                                        Icon(Icons.arrow_forward_ios_outlined)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    viewportFraction: 0.9,
                    height: 300,
                    autoPlay: true,
                  )),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IconsWidget(
                        iconcolor: Colors.amber,
                        iconss: Icons.monetization_on,
                        name: 'Supper Coin'),
                    IconsWidget(
                        iconcolor: Colors.blue,
                        iconss: Icons.mobile_screen_share,
                        name: ' Recharch'),
                    IconsWidget(
                        iconcolor: Colors.green,
                        iconss: Icons.cached_sharp,
                        name: 'Spoyl '),
                    IconsWidget(
                        iconcolor: Colors.green,
                        iconss: Icons.account_balance_wallet_rounded,
                        name: 'Money'),
                    IconsWidget(
                        iconcolor: Colors.orange,
                        iconss: Icons.local_convenience_store_rounded,
                        name: 'Shope 24')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Discount For You',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: 450,
                color: const Color.fromARGB(255, 244, 171, 61),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                            2,
                            (index) => InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ItemDetails(
                                              images:
                                                  "assets/images/item${index + 2}.jpg"),
                                        ));
                                  },
                                  child: Section7OfferWidget(
                                    images:
                                        "assets/images/item${index + 2}.jpg",
                                    name: prodectname[index],
                                  ),
                                ))),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                            2,
                            (index) => InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ItemDetails(
                                              images:
                                                  "assets/images/item${index + 7}.jpg"),
                                        ));
                                  },
                                  child: Section7OfferWidget(
                                    images:
                                        "assets/images/item${index + 7}.jpg",
                                    name: prodectname[index + 2],
                                  ),
                                ))),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class Section7OfferWidget extends StatelessWidget {
  String images;
  String name;
  Section7OfferWidget({
    required this.images,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 200,
      width: 180,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 120,
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      images,
                    ),
                    fit: BoxFit.cover),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(name),
          Text(
            'Min 50% Off',
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }
}

class IconsWidget extends StatelessWidget {
  final Color iconcolor;
  final IconData iconss;
  final String name;
  IconsWidget({
    required this.iconcolor,
    required this.iconss,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            child: Icon(
              iconss,
              color: iconcolor,
              size: 40,
            ),
            radius: 30,
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class Section5OfferWidget extends StatelessWidget {
  String images;
  String name;

  Section5OfferWidget({
    required this.images,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0),
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.pink, Colors.white, Colors.white]),
          image: DecorationImage(image: NetworkImage('url')),
          color: Colors.pink,
          borderRadius: BorderRadius.circular(6)),
      height: 220,
      width: 170,
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Container(
            height: 130,
            width: 140,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(images), fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(6)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromARGB(255, 15, 15, 15)),
          ),
          Text('Best Offer'),
          SizedBox(
            height: 3,
          ),
          Text(
            "Best ${name}",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromARGB(255, 15, 15, 15)),
          ),
        ],
      ),
    );
  }
}

class Section4OfferWidget extends StatelessWidget {
  String image;
  Section4OfferWidget({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pink, borderRadius: BorderRadius.circular(6)),
      height: 120,
      width: 120,
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Container(
            height: 70,
            width: 103,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(6)),
          ),
          Text(
            'New offer product',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            'forom Rs.2355',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromARGB(255, 240, 185, 20)),
          )
        ],
      ),
    );
  }
}

class section1OfferSliderWidget extends StatelessWidget {
  const section1OfferSliderWidget({
    super.key,
    required this.ithems,
  });

  final List ithems;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: ithems
            .map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 600,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            e,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ))
            .toList(),
        options: CarouselOptions(
            height: 200, autoPlay: true, viewportFraction: 1.0));
  }
}

class Section2OfferWidget extends StatelessWidget {
  String image;
  String name;
  Section2OfferWidget({
    required this.image,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            image,
          ),
          // backgroundColor: const Color.fromARGB(255, 246, 245, 243),

          radius: 30,
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Text(name)
      ],
    );
  }
}
