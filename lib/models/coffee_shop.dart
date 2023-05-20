import 'package:flutter/material.dart';
import 'coffee.dart';


class CoffeeShop extends ChangeNotifier {

  // coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: "4.10",
      imagePath: "lib/images/black.png",
    ),
    // latte
    Coffee(
      name: 'Latte',
      price: "4.10",
      imagePath: "lib/images/latte.png",
    ),

    //iced coffee
    Coffee(
      name: 'Iced Coffee',
      price: "5.10",
      imagePath: "lib/images/iced_coffee.png",
    ),

    //espresso
    Coffee(
      name: 'Espresso',
      price: "4.10",
      imagePath: "lib/images/expresso.png",
    ),

  ];

  // get coffeee list
  List<Coffee> get coffeeShop => _shop;

  // user cart
  List<Coffee> _userCart = [];

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }


}
