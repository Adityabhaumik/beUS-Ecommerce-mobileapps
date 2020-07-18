import 'package:flutter/material.dart';
//import 'package:beus/productPage.dart';
//homePage catagory buttons
class catagoryButtons extends StatelessWidget {
  final String titile;
  final Function pressed;
  catagoryButtons(this.titile,this.pressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0,right: 10.0,),
      child: FlatButton(
        child: Text(titile,style: TextStyle(color: Colors.white)),
        color:Colors.blue,
        disabledColor:Colors.orange ,
        onPressed: pressed,
      ),
    );
  }
}