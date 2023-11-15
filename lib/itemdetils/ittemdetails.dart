import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  String images;
  ItemDetails({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const SizedBox(
            height: 40,
            child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search For products',
                    border: OutlineInputBorder(gapPadding: 2))),
          ),
        ),
        body: ListView(children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'Product is the combination of Goods and Services offered to the target market by a company. There are two concepts of levels of Product and services '),
          ),
          const Row(
            children: [
              Rating(),
              Rating(),
              Rating(),
              Rating(),
            ],
          ),
          Container(
            height: 300,
            // color: Colors.amber,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(images))),
            child: Stack(
              children: [
                const Positioned(
                  right: 6,
                  top: 6,
                  child: Column(
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(Icons.share_outlined)
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 6,
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.info),
                      label: Text('Details')),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '78 % off  ',
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
                Text(
                  'Buy Now and Ply Later with EMI ',
                ),
              ],
            ),
          ),
          const Space(),
          ListTile(
            leading: const Text(
              'Deliver to: ',
              style: TextStyle(fontSize: 18),
            ),
            title: const Text(
              'Wayanad',
              style: TextStyle(fontSize: 18),
            ),
            trailing: OutlinedButton(onPressed: () {}, child: Text('Change')),
          ),
          const Divider(
            thickness: 1,
          ),
          const ListTile(
            leading: Icon(Icons.airport_shuttle_outlined),
            title: Text(
              'FREE Delivery',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('23 Nov, Thursday'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          const Space(),
          const ListTile(
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            title: Text('All offer & Coupons'),
          ),
          Space(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Options(
                colors: Colors.red,
                icons: Icons.repartition_rounded,
                option: 'Return\nAllowed',
              ),
              Options(
                colors: Colors.amber,
                icons: Icons.attach_money_outlined,
                option: 'Cash on Delivery \n     available',
              ),
              Options(
                icons: Icons.published_with_changes_sharp,
                option: 'Pluse',
                colors: Colors.green,
              ),
            ],
          ),
          Space()
        ]),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.amber,
            selectedFontSize: 20,
            unselectedFontSize: 20,
            iconSize: 1,
            // unselectedItemColor: Colors.amber,
            unselectedIconTheme: const IconThemeData(color: Colors.black),
            items: const [
              BottomNavigationBarItem(
                  // backgroundColor: Colors.amber,
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: 'Go to cart'),
              BottomNavigationBarItem(
                  backgroundColor: Colors.amber,
                  icon: Icon(Icons.shop_2_sharp),
                  label: 'Buy now')
            ]),
      ),
    );
  }
}

class Options extends StatelessWidget {
  IconData icons;
  String option;
  Color colors;
  Options({
    required this.colors,
    required this.icons,
    required this.option,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icons,
            size: 30,
            color: colors,
          ),
          Text(option)
        ],
      ),
    );
  }
}

class Space extends StatelessWidget {
  const Space({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 10,
      color: Color.fromARGB(255, 235, 233, 233),
    );
  }
}

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.green,
    );
  }
}
