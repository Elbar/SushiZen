import 'package:flutter/cupertino.dart';

import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "California Sushi",
        price: "21.99",
        imagePath: "lib/images/california.png",
        rating: "4.9"),
    Food(
        name: "Tobiko",
        price: "32.99",
        imagePath: "lib/images/tobiko.png",
        rating: "4.8"),
    Food(
        name: "Uramaki",
        price: "38.99",
        imagePath: "lib/images/uramaki.png",
        rating: "4.6"),
  ];

  List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;

  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
