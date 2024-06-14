import 'package:flutter/material.dart';

import '../models/shoe.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe image
          Container(
            margin: const EdgeInsets.only(top: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagepath),
            ),
          ),

          // product discription
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          // price and details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    // shoe name
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    //price
                    Text(
                      'GHC' + '  ' + shoe.price,
                    ),
                    //plus button
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        width: 50,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(left: 140),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
