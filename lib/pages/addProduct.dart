
import 'package:flutter/material.dart';

import 'Productclass.dart';

class addproduct extends ChangeNotifier {
  final List<Product> _items = [];
  List<Product> get items => _items;
 static Map<String,dynamic> i={};
  static  void add(dynamic item) {
    i.addAll(item);
    item(i);
  }
  void item(i){
_items.add(i);
  }

  void remove(Product item) {
    _items.remove(items);
    notifyListeners();
  }

  void removeall(Product item) {
    _items.clear();
    notifyListeners();
  }

  double getcarttotal() {
    return _items.fold(
        0, (previousValue, item) => previousValue + item.Product_price);
  }
}
