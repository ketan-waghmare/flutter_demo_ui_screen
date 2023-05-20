import 'package:flutter/material.dart';
import 'package:flutter_demo_ui_screen/components/coffee_tile.dart';
import 'package:flutter_demo_ui_screen/models/coffee_shop.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading
              Text(
                'Your cart',
                style: TextStyle(fontSize: 20),
              ),

              //list of cart items

              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.userCart[index];
                    //return the coffee tile
                    return CoffeeTile(
                        coffee: eachCoffee,
                        onPressed: () => removeFromCart(eachCoffee),
                        icon: Icon(Icons.delete));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
