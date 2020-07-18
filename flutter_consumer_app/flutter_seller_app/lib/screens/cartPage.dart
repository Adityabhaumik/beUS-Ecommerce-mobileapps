import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
class cartPage extends StatefulWidget {
  static const String id='cartPage';

  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       home:Scaffold(
         backgroundColor: Color(0xFF212121),
          appBar: AppBar(
            backgroundColor: Colors.white30,
            centerTitle: true ,
            title: Text('Your Cart',style: TextStyle(color: Color(0xFFfcf4eb))),


            actions: <Widget>[
              IconButton(icon : Icon(Icons.search,) , onPressed: () {
                print('clicked');
              },),
              IconButton(icon: Icon(Icons.shopping_cart,color: Colors.orange),onPressed: (){
                print('searched clicked');
              },)
            ],
          ),
         drawer:drawer('Aditya'),
         floatingActionButton: FloatingActionButton.extended(
           icon:  Icon(Icons.account_balance_wallet),
            label: Text('Buy',style: TextStyle(color: Colors.white),) ,
           backgroundColor: Colors.green,
           onPressed: (){
             print('FAB is clickd');
           },
        ),
        )
    );
  }
}

