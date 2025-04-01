import 'package:flutter/material.dart';
import 'package:jabalprog/features/home/data/datasource/local_data_holder.dart';
import 'package:jabalprog/features/home/domain/entities/food._entity.dart';
import 'package:jabalprog/local_storage/hive_facade/hive_facade.dart';

final class CartController with ChangeNotifier {
  CartController() {
    readCarts();
  }
  List<String> _cart = [];
  double totalPrice = 0;
  Map<String, (int a, double b)> everyMealCountAndPrice = {};

  List<String> get cart => _cart;

  void readCarts() async {
    _cart = await HiveFacade.instance.getCartItems();
    if (_cart.isEmpty) {
      _cart = ['10', '12', '13']; // just for testing
      // when going productio, remove this condition
    }
    for (var id in _cart) {
      totalPrice += getItemById(id: id).price;
      everyMealCountAndPrice[id] = (1, getItemById(id: id).price);
    }
    notifyListeners();
  }

  void addToCart(String item) async {
    if (_cart.contains(item)) {
      return;
    } else {
      _cart.add(item);
      totalPrice += getItemById(id: item).price;
      everyMealCountAndPrice[item] = (1, getItemById(id: item).price);
      notifyListeners();
    }
    await HiveFacade.instance.addToFavorite(item);
  }

  void removeFromCart(String item) async {
    if (_cart.length == 1) {
      return;
    }
    if (_cart.contains(item)) {
      _cart.remove(item);
      totalPrice -= getItemById(id: item).price;
      everyMealCountAndPrice.remove(item);
      notifyListeners();
    }
    // interact with the facade
    await HiveFacade.instance.removeFromFavorite(item);
  }

  bool isInCart(String item) {
    return _cart.contains(item);
  }

  void increaseCountOfOneMeal({required String id}) {
    int count = everyMealCountAndPrice[id]!.$1;
    double price = everyMealCountAndPrice[id]!.$2;
    price += (price / count);
    totalPrice += (price / count++);

    everyMealCountAndPrice[id] = (count, price);
    notifyListeners();
  }

  void decreasecreaseCountOfOneMeal({required String id}) {
    int count = everyMealCountAndPrice[id]!.$1;
    if (count == 1) {
      return;
    }
    double price = everyMealCountAndPrice[id]!.$2;
    price -= (price / count);
    totalPrice -= (price / count--);

    everyMealCountAndPrice[id] = (count, price);

    notifyListeners();
  }

  FoodEntity getItemById({required String id}) {
    return DataHolder.getItemById(id: id);
  }
}
