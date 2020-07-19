import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/cart.dart';

class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<Cart>(
        builder:(_,model,child)=>
        Text(
          'Cart Length Goes here : ${model.cartList.length}',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
