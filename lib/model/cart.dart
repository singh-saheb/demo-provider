import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List cartList = [];

  addToCart(value) {
    this.cartList.add(value);
    notifyListeners();
  }

  deleteFomCart(value){
    //Logic Goes Here
    this.cartList.remove(value);
    notifyListeners();
  }
}
