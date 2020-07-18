import 'file:///D:/beUs-Ecommerce/flutter_consumer_app/flutter_seller_app/lib/screens/homePage.dart';
import 'package:flutter/material.dart';
//import 'package:beus/productPage.dart';
class drawer extends StatelessWidget {
  final String nameOfTheUser;
  drawer(this.nameOfTheUser);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  SafeArea(
        child: Drawer(
          child: Container(
            color: Color(0xFF212121),
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child:Column(
                    children: <Widget>[
                      Container(margin:EdgeInsets.only(top: 30),child: CircleAvatar(backgroundImage: NetworkImage(''))),
                      Container(
                          margin: EdgeInsets.all(12),
                          child: Text(('Sup '+nameOfTheUser+' !'),
                            style:TextStyle(color: Colors.white,fontSize: 24) ,
                          )
                      ),

                    ],
                  ),
                  decoration: BoxDecoration(color: Color(0xF181818)),

                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
                  ),
                  margin: EdgeInsets.only(top:10.0,bottom: 10.0,left: 5.0,right: 5.0),
                  padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: 10.0) ,
                  child: Text('Wish list',style: TextStyle(color: Colors.white),),
                ), Container(
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
                  ),
                  margin: EdgeInsets.only(top:10.0,bottom: 10.0,left: 5.0,right: 5.0),
                  padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: 10.0) ,
                  child: Text('Your orders',style: TextStyle(color: Colors.white),),
                ), Container(
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
                  ),
                  margin: EdgeInsets.only(top:10.0,bottom: 10.0,left: 5.0,right: 5.0),
                  padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: 10.0) ,
                  child: Text('Address',style: TextStyle(color: Colors.white),),
                ), Container(
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
                  ),
                  margin: EdgeInsets.only(top:10.0,bottom: 10.0,left: 5.0,right: 5.0),
                  padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: 10.0) ,
                  child: Text('Settings',style: TextStyle(color: Colors.white),),
                ),
                GestureDetector(
                  onTap: (){
                    print('Logout button pressed');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
                    ),
                    margin: EdgeInsets.only(top:10.0,bottom: 10.0,left: 5.0,right: 5.0),
                    padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: 10.0) ,
                    child: Text('Logout',style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


