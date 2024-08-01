import 'package:flutter/material.dart';
import 'package:sitp_provider/models/product.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _cart = [];

  List<Product> get cart => _cart;

  void addProduct(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _cart.remove(product);
    notifyListeners();
  }
}
