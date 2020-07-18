import '../widgets/drawer.dart';
import './homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './cartPage.dart';

class productPage extends StatefulWidget {
  static const String id='productPage';

  @override
  _productPageState createState() => _productPageState();
}

class _productPageState extends State<productPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       home:Scaffold(
         backgroundColor: Color(0xFF212121),
         appBar: AppBar(
           backgroundColor: Colors.white30,
           centerTitle: true ,
           title: GestureDetector(
             onTap: (){
               Navigator.pushNamed(context, homePage.id);
             },
               child: Text('beUs',
                   style: TextStyle(color: Color(0xFFfcf4eb))

               )
           ),


           actions: <Widget>[
             IconButton(icon : Icon(Icons.search) , onPressed: () {
               print('clicked');
             },),
             IconButton(icon: Icon(Icons.shopping_cart),onPressed: (){
               Navigator.pushNamed(context, cartPage.id);
               print('searched clicked');
             },)
           ],
         ),
         drawer:drawer('Aditya'),
         body: ListView(

           children: <Widget>[
        Container(child: Text('Pirticular product page',style: TextStyle(color: Colors.white),),)
           ],
         ),
       )
    );
  }
}

