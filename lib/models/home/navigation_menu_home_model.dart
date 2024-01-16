import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationMenuHomeModel {
  final String icon;
  bool? isSelected;

  NavigationMenuHomeModel(this.icon, [this.isSelected]);

  NavigationMenuHomeModel copyWith({String? icon, bool? isSelected}) =>
      NavigationMenuHomeModel(icon ?? this.icon, isSelected ?? this.isSelected);

  static final menuNavBar = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.home_outlined,
        color: Colors.black,
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(

      icon: Icon(
        Icons.bookmark_outline,
        color: Colors.black,

      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.card_giftcard,
        color: Colors.black,
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.shopping_cart_outlined,
        color: Colors.black,
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.shopping_bag_outlined,
        color: Colors.black,
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(

      icon: Icon(
        Icons.person,
        color: Colors.black,
      ),
      label: 'Home',
    )
  ];
}
