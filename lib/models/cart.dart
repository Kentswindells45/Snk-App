import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '230',
        imagepath: 'lib/images/sn2.jpg',
        description:
            'The farward-Thinking design of this latest signature shoe',
        id: '02'),
    Shoe(
        name: 'Wild Sneakers',
        price: '220',
        imagepath: 'lib/images/sn3.jpg',
        description: 'Youv\'ve got the hops and the speed-lace up in shoes',
        id: '03'),
    Shoe(
        name: 'Canvas',
        price: '220',
        imagepath: 'lib/images/sn4.jpg',
        description: 'Easy wear to fit every occation',
        id: '04'),
    Shoe(
        name: 'Pink Freak',
        price: '210',
        imagepath: 'lib/images/sn5.jpg',
        description: 'Enlighting your feet with the hermes pink freak',
        id: '05'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // adding items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items to cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
