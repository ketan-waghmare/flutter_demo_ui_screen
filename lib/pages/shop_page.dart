import 'package:flutter/material.dart';
import 'package:flutter_demo_ui_screen/models/coffee_shop.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo_ui_screen/models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      "How Would you like your coffee?",
                      style: TextStyle(fontSize: 20),
                    ),

                    const SizedBox(height: 25),

                    //list of coffee to buy
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.coffeeShop.length,
                            itemBuilder: (context, index) {
                              //get individual coffee
                              Coffee eachCoffee = value.coffeeShop[index] as Coffee;

                              // return the tile for this coffee
                              return ListTile(
                                title: Text(eachCoffee.name),
                              );
                            }))
                  ],
                ),
              ),
            ));
  }
}
