import 'package:flutter/cupertino.dart';

class ItemsProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _items = [];

  List<Map<String, dynamic>> getItems() => _items;

  void addToCart(Map<String, dynamic> item) {
    _items.add(item);
    notifyListeners();
  }

  void removeToItems(int index) {
    _items.removeAt(index);
    notifyListeners();
  }
}
