import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/cart.dart';
import 'package:provider_demo/model/user.dart';
import 'package:provider_demo/ui/cartPage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CartPage()));
                },
              ),
              Consumer<Cart>(
                builder: (_ , model, child) => CircleAvatar(
                  radius: 10,
                  child: Text(model.cartList.length.toString()),
                ),
              )
            ],
          ),
          Consumer<MyUser>(
            builder: (_,model,child)=>
            InkWell(
                onTap: (){
                 model.emailId==null? model.loginUser("Saheb Singh", "sahebsingh@hotmail.com"):model.logOutUser();
//                  print('sign in tried');
                  print(model.emailId);
                },
                child: Text(
                  model.emailId==null?'Sign In':'Sign Out',
                  style: TextStyle(fontSize: 20),)),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              margin: EdgeInsets.only(top: 10),
              color: Colors.grey,
            ),
            Container(
                height: 250,
                margin: EdgeInsets.only(bottom: 20),
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 150,
                        child: Text(''),
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 10, top: 10),
                      ),
                      Text(
                        'Product Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Consumer<Cart>(
                        builder: (_,model,child)=>
                        FlatButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            'Add to cart',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            model.addToCart(index);
                            print(model.cartList);
                            print('added');
                          },
                        ),
                      )
                    ],
                  ),
                )),
            Container(child: Text('Developer Container'),),
            Container(child: Text('Added Authentication'),)
          ],
        ),
      ),
    );
  }
}
