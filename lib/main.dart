import 'package:flutter/material.dart';
import 'package:provider_demo/model/cart.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/user.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MultiProvider(
        providers: [
        ChangeNotifierProvider<Cart>(create: (_)=>Cart(),),
        ChangeNotifierProvider<MyUser>(create:(_)=>MyUser())
      ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
        theme: ThemeData(
          primaryColor: Colors.indigo,
        ),
      ),
      );



//      ChangeNotifierProvider<Cart>(
//      create: (_) => Cart(),
//      child:,
//    );
  }
}
