import 'package:flutter/material.dart';
import 'package:jabalprog/local_storage/hive_facade/hive_facade.dart';

final class CartController with ChangeNotifier {
  List<String> _cart = [];

  List<String> get favorites => _cart;

  void addFavorite(String item) async {
    if (!_cart.contains(item)) {
      _cart.add(item);
      notifyListeners();
    }
    await HiveFacade.instance.addToFavorite(item);
  }

  void removeFavorite(String item) async {
    if (_cart.contains(item)) {
      _cart.remove(item);
      notifyListeners();
    }
    // interact with the facade
    await HiveFacade.instance.removeFromFavorite(item);
  }

  bool isFavorite(String item) {
    return _cart.contains(item);
  }
}
