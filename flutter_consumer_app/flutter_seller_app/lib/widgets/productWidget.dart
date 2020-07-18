import '../screens/cartPage.dart';
import '../widgets/drawer.dart';
import '../screens/productPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/catagoryButton.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../utiliti/productClass.dart';
class productCard extends StatelessWidget {

  final product Product;
  productCard({this.Product});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:5.0,right: 5.0,top: 10),
      child: Card(
          margin: EdgeInsets.only(left: 10,right: 10,top: 7),
          child:Container(
            padding: EdgeInsets.only(left: 20,top: 5,bottom: 5),
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(Product.porductName,style: TextStyle(fontSize: 24),),
                      Text('${Product.price}',style: TextStyle(fontSize: 20))
                    ],),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: CircleAvatar(radius:60
                    ,child: Image.asset('assets/01.png'),
                  ),
                ),
                )],
            ),
          )
      ),
    );
  }
}
