import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappseller/Screens/addNewProductScreen.dart';
import '../widgets/drawer.dart';
import './dummidata.dart';
import 'dummidata.dart';
class homeSereen extends StatefulWidget {
  static const String id = 'homePage';

  @override
  _homeSereenState createState() => _homeSereenState();
}

class _homeSereenState extends State<homeSereen> {

  List<orders> orderlist =[
    orders(Product:'Shirt',OrderBy:'Aditya Bhumik',Address:'West Beangal,India')
  ];

//  Widget OrderTemplate(orders){
//    return orderCard(orders:orders);
//  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[700],
        title: Text('beUS-Seller',style:TextStyle(color: Colors.white,fontSize: 24) ,),

      ),
      drawer:drawer('Aditya') ,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.pushNamed(context, addProduct.id);
          print('fab button clicked');
        },
        label: Text('Add porduct'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
             Container(
              decoration: BoxDecoration(
              color: Colors.grey[700],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15),topLeft: Radius.circular(15),topRight: Radius.circular(15) )
)  ,
               margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 25,right: 5,top: 12,bottom: 10),

                child: Text('Qued Orders',style: TextStyle(color: Colors.white,fontSize: 25),),
              ),

            Container(
                     child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: orderlist.map((order)=>orderCard(orders: order)).toList(),

                     ),
              ),
          ],
        ),
      ),

    );
  }
}


class orderCard extends StatelessWidget {
  final orders;
  orderCard({this.orders});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
      child: Card(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:12.0,top: 12.0),
              child: Text('Product: '+ orders.Product,style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.grey[600]
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:12.0),
              child: Text('OrderBy: '+orders.OrderBy,style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.grey[600]
              ),),
            ),
            SizedBox(height: 6.0),
            Padding(
              padding: const EdgeInsets.only(left:12.0,bottom: 12.0),
              child: Text('Dilivery Address:'+orders.Address,style:TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ) ,),
            )
          ],
        ) ,
      ),
    );
    ;
  }
}
