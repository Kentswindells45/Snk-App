import 'package:flutter/material.dart';

import '../components/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  /*final List<Shoe> shoes = [
    Shoe(
        id: "1",
        name: "nike",
        price: "99",
        imagepath: "lib/images/sn1.jpg",
        description: "hot"),
    Shoe(
        id: "2",
        name: "nike",
        price: "99",
        imagepath: "lib/images/sn2.jpg",
        description: "hot"),
    Shoe(
        id: "3",
        name: "nike",
        price: "99",
        imagepath: "lib/images/sn3.jpg",
        description: "hot"),
  ];*/
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // search bar
      Container(
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Search',
              style: TextStyle(color: Colors.grey),
            ),
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      // message
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Text(
          'Everyone flies.. some flies longer than others',
          style: TextStyle(color: Colors.grey[800]),
        ),
      ),

      // hot picks
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Hot Picks🔥',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(
              'See all',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            )
          ],
        ),
      ),

      const SizedBox(
        height: 10,
      ),
      Expanded(
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // create an index for shoe
                Shoe shoe = Shoe(
                  name: "Jordans",
                  price: "240",
                  imagepath: "lib/images/sn1.jpg",
                  description: "cool shoe",
                  id: "01",
                );
                return ShoeTile(
                  shoe: shoe,
                );
              }))
    ]);
  }
}
