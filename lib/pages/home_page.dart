import 'package:flutter/material.dart';
import 'package:flutter_demo_ui_screen/components/bottom_navigation_bar.dart';
import 'package:flutter_demo_ui_screen/const.dart';
import 'package:flutter_demo_ui_screen/pages/cart_page.dart';
import 'package:flutter_demo_ui_screen/pages/shop_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //navigate bottom bar
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    //shop page
    ShopPage(),

    //card page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTapChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
