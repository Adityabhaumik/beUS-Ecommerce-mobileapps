import './cartPage.dart';
import '../widgets/productWidget.dart';
import '../widgets/drawer.dart';
import './productPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/catagoryButton.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../utiliti/productClass.dart';
class homePage extends StatefulWidget {
static const String id='homePage';

  @override
  _homePageState createState() => _homePageState();
}

List productsList=[
  product(porductName: 'ColGate',price: 24),
  product(porductName: 'Shirt',price: 12),
  product(porductName: 'Ashirvad Ataa',price: 60),
  product(porductName: 'ColGate',price: 24),
  product(porductName: 'Shirt',price: 12),
  product(porductName: 'Ashirvad Ataa',price: 60),
  product(porductName: 'ColGate',price: 24),
  product(porductName: 'Shirt',price: 12),
  product(porductName: 'Ashirvad Ataa',price: 60),
];
class _homePageState extends State<homePage> {
  bool isCircularProcressindicator = true;
  String url='http://dummy.restapiexample.com/api/v1/employees';
  String myurl ='https://aditya-beus.herokuapp.com/sellerProducts/view';
  List data;
//  void getdata ()async{
//    http.Response jsonData= await http.get(myurl);
//    var data=convert.jsonDecode(jsonData.body);
//    print(data);
//    setState(() {
//      isCircularProcressindicator=false;
//    });
//  }
  Future<List<JsonProduct>> _getProducts()async{
    var responce =  await http.get(myurl);

    var extractedData = convert.jsonDecode(responce.body);
     data = extractedData;
  //  print(data[0]["productName"]);
    setState(() {
            isCircularProcressindicator=false;
    });
//    List test;
//    test =extractedData[];
//    List<JsonProduct> allProducts =[];
//    for(var u in extractedData){
//      JsonProduct jsonProduct = JsonProduct();
//      allProducts.add(jsonProduct);
//    }
//    print(allProducts);
//    return allProducts;

  }

  @override
  void initState() {
    _getProducts();
    //getdata();
    // TODO: implement initState
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       home:Scaffold(
         backgroundColor: Color(0xFF212121),
          appBar: AppBar(
            backgroundColor: Colors.white30,
            centerTitle: true ,
            title: Text('beUs',style: TextStyle(color: Color(0xFFfcf4eb))),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.shopping_cart),onPressed: (){
                //getdata();
                Navigator.pushNamed(context, cartPage.id);
                print('searched clicked');
              },)
            ],
          ),
         drawer:drawer('Aditya'),
         body:
         isCircularProcressindicator?Center(
             child: CircularProgressIndicator(
               valueColor:AlwaysStoppedAnimation<Color>(Colors.tealAccent)
               ,)):
         ListView.builder(
                   itemCount: data.length,
                     itemBuilder:(BuildContext context, i){
                       return Center(
                         child:
                           ListTile(
                           title: Text(data[i]["productName"],style: TextStyle(color: Colors.white),),
                           subtitle: Text('${data[i]["stock"]}',style: TextStyle(color: Colors.white)),
                             trailing: CircleAvatar(
                                 radius:40,
                                 child: Image.asset('assets/05.png') ),
                             onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) => individualProductPage(data[i])));
                             },
                         ),
                       );
                     })
//                 FutureBuilder(
//                   future: _getProducts(),
//                   builder: (BuildContext context,AsyncSnapshot sanpshot){
//                     if(sanpshot.data ==null){
//                       CircularProgressIndicator(valueColor:AlwaysStoppedAnimation<Color>(Colors.tealAccent));
//                     }else {
//                       return ListView.builder(
//                           itemCount: sanpshot.data.length,
//                           itemBuilder: (BuildContext context, int index) {
//                             return ListTile(
//                               title: Text(sanpshot.data[index].productName),
//                             );
//                           });
//                     }
//                     },
//                 )
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//
//           children:  productsList.map((products)=>productCard(Product: products)
//             //  Text('${products.porductName}'+ '${products.price}',style: TextStyle(color: Colors.white,fontSize: 24),)
//           ).toList()
//         ),

        ),

    );
  }
}
////
//class ProductCard extends StatelessWidget {
//
//  final String pname;
//
//  productCard({this.pname});
//  @override
//  Widget build(BuildContext context) {
//    return Card(
//    margin: EdgeInsets.only(left: 10,right: 10,top: 7),
//      child:Container(
//        padding: EdgeInsets.only(left: 20,top: 5,bottom: 5),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//          Text(p,style: TextStyle(fontSize: 24),),
//         Text('${Product.price}',style: TextStyle(fontSize: 20))
//        ],),
//      )
//    );
//  }
//}
class JsonProduct {
  final String productName;
  final String price;
  JsonProduct({this.productName,this.price});
}


class individualProductPage extends StatelessWidget {
  final Data;
  individualProductPage(this.Data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
        
         //SnackBar(content: Text('Order Placed Dont Worry this is still under devlopment' ));
        },
        backgroundColor: Colors.teal,
        label: Text('BUY',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      appBar: AppBar(
        backgroundColor:Colors.white30,
        leading: IconButton(icon: Icon(Icons.keyboard_backspace),
        onPressed: (){
          Navigator.pop(context);
      }),

       ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Center(child: CircleAvatar(
              radius: 60 ,
              child: Image.asset('assets/05.png'),)),
            ),
            Flexible(
              flex: 1,
              child:  Container(
                padding: EdgeInsets.only(left: 20,top:20,bottom: 20),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Product  :  ',style: TextStyle(fontSize: 25),),
                    Text('${Data["productName"]}',style: TextStyle(fontSize: 25),),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child:
                 Container(
                   padding: EdgeInsets.only(left: 20,top:20,bottom: 20),
                   child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Price   :  ',style: TextStyle(fontSize: 25),),
                      Text('${Data["stock"]}',style: TextStyle(fontSize: 25),),
                    ],
                ),
                 ),

            ),
            Flexible(
              flex: 1,
              child:  Container(
                padding: EdgeInsets.only(left: 20,top:20,bottom: 20),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Description  :  ',style: TextStyle(fontSize: 25),),
                    Text(Data["description"],style: TextStyle(fontSize: 25),),
                  ],
                ),
              ),
              //Text(Data["description"]),
            )
          ],
        ),

    );
  }
}
