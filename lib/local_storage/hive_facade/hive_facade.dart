import 'package:hive_flutter/hive_flutter.dart';

final class HiveFacade {
  static HiveFacade? _instance;

  static HiveFacade get instance {
    _instance ??= HiveFacade._internal();
    return _instance!;
  }

  HiveFacade._internal();

  // above is the singleton pattern implementation
  // below is the initialization of Hive
  // all class is just the implementation of facade pattern

  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox('cart');
    await Hive.openBox('favorite');
  }

  Future<void> addToCart(String id) async {
    final box = Hive.box('cart');
    await box.put(id, id);
  }

  Future<void> removeFromCart(String id) async {
    final box = Hive.box('cart');
    await box.delete(id);
  }

  Future<List<String>> getCartItems() async {
    final box = Hive.box('cart');
    return box.keys.cast<String>().toList();
  }

  Future<void> addToFavorite(String id) async {
    final box = Hive.box('favorite');
    await box.put(id, id);
  }

  Future<void> removeFromFavorite(String id) async {
    final box = Hive.box('favorite');
    await box.delete(id);
  }

  Future<List<String>> getFavoriteItems() async {
    final box = Hive.box('favorite');
    return box.keys.cast<String>().toList();
  }
}
