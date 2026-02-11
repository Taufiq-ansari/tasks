import 'package:flutter/material.dart';

class ListOfMapProvider extends ChangeNotifier {
  //  list of data
  List<Map<String, dynamic>> _mData = [];

  // add to cart
  List<Map<String, dynamic>> _cartData = [];

  List<Map<String, dynamic>> getCartData() => _cartData;

  List<Map<String, dynamic>> getmData() => _mData;
  // method  to add data
  void addData(Map<String, dynamic> data) {
    _mData.add(data);
    notifyListeners();
  }

// addtocart method
  void addToCart(Map<String, dynamic> items) {
    _cartData.add(items);
    notifyListeners();
  }

  void removeToCart(int index) {
    _cartData.removeAt(index);
    notifyListeners();
  }
}
