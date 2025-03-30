import 'package:flutter/material.dart';
import 'package:jabalprog/local_storage/hive_facade/hive_facade.dart';

final class CartController with ChangeNotifier {
  List<String> _cart = [];

  List<String> get cart => _cart;

  void readCarts() async {
    _cart = await HiveFacade.instance.getCartItems();
  }

  void addToCart(String item) async {
    if (_cart.contains(item)) {
      return;
    } else {
      _cart.add(item);
      notifyListeners();
    }
    await HiveFacade.instance.addToFavorite(item);
  }

  void removeFromCart(String item) async {
    if (_cart.contains(item)) {
      _cart.remove(item);
      notifyListeners();
    }
    // interact with the facade
    await HiveFacade.instance.removeFromFavorite(item);
  }

  bool isInCart(String item) {
    return _cart.contains(item);
  }
}
