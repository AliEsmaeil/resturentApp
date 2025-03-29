import 'package:flutter/material.dart';
import 'package:jabalprog/local_storage/hive_facade/hive_facade.dart';

final class FavoritesController with ChangeNotifier {
  List<String> _favorites = [];

  List<String> get favorites => _favorites;

  void toggleFavorite(String item) async {
    if (!_favorites.contains(item)) {
      _favorites.add(item);
      notifyListeners();
      await HiveFacade.instance.addToFavorite(item);
    } else {
      _favorites.remove(item);
      notifyListeners();
      await HiveFacade.instance.removeFromFavorite(item);
    }
  }

  bool isFavorite(String item) {
    return _favorites.contains(item);
  }
}
