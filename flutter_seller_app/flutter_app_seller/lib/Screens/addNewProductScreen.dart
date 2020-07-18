import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterappseller/widgets/drawer.dart';
import '../widgets/RoundedButton.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io' as Io;
import 'dart:async';
import 'dart:convert';
var productName;
var price;
var stock;
var description;
var img1;
class addProduct extends StatefulWidget {

  static const String id= 'addProduct';

  @override
  _addProductState createState() => _addProductState();
}

class _addProductState extends State<addProduct> {
//  void chaneImageToCharecters(sorceImage){
//    img1 =base64Decode(sorceImage);
//    print('$img1');
//  }
  Io.File _image;

  final _picker = ImagePicker();
  Future getImageFromGalary() async{
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);
    final bytes = await pickedFile.readAsBytes();
    //chaneImageToCharecters(pickedFile.path);
    setState(() {
      _image = Io.File(pickedFile.path);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        backgroundColor: Color(0xFFffac30),
        title: Text('beUS-Seller',style:TextStyle(color: Colors.white,fontSize: 24) ,),
        actions: <Widget>[
    IconButton(icon : Icon(Icons.add_a_photo) , onPressed: () {
      getImageFromGalary();
      print('clicked');
    })
        ],
      ),
      drawer: drawer('Aditya'),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Center(
                      
                      child: _image == null?Text('no image selected'):Image.file(_image),
                      
                    ),
                    Container(
                      padding: EdgeInsets.all(5) ,
                      child: FlatButton(
                          onPressed: (){
                          final bytes =_image.readAsBytesSync();
                          img1 = base64Encode(bytes);
                          print('$img1');
                          },
                        color: Colors.orangeAccent,
                        child: Text('Plese Confirm'),
                      ),
                    )
                  ],
                )
            ),
            addProductForm(),
          ],
        ),
      )
    );
  }
}

//From widgt for addProduct
class addProductForm extends StatefulWidget {
  @override
  _addProductFormState createState() => _addProductFormState();
}

class _addProductFormState extends State<addProductForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
//            Container(
//              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
//              child: TextFormField(
//                validator: (value) {
//                  if (value.isEmpty || value.length < 5) {
//                    return "PLESE ENTER VALUE";
//                  }
//                  return null;
//                },
//                decoration: InputDecoration(
//
//                  hintText: 'Enter Product Name Here',
//                  labelText: 'Product Name'
//                ),
//              ),
//            ),
            Container(
              ///pin code
              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
              child: TextFormField(
                onChanged: (value){
                  productName=value;
                },
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value.isEmpty ) {
                    return "PLESE ENTER VALUE";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(color: Color(0xFFFF7F00)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //focusColor: Color(0xFFFFD6B0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Enter Product Name Here ',
                    labelText: 'Product Name'
                ),
              ),
            ),
//            Container(
//              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
//              child: TextFormField(
//                keyboardType: TextInputType.number,
//                inputFormatters: <TextInputFormatter>[
//                  WhitelistingTextInputFormatter.digitsOnly
//                ],
//                validator: (value) {
//                  if (value.isEmpty ) {
//                    return "PLESE ENTER VALUE";
//                  }
//                  return null;
//                },
//                decoration: InputDecoration(
//
//                    hintText: 'Enter the Product Price Here in INR',
//                    labelText: 'Product Price in INR'
//                ),
//              ),
//            ),

            Container(
              ///pin code
              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
              child: TextFormField(
                onChanged: (value){
                  price=value;
                },
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty ) {
                    return "PLESE ENTER VALUE";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(color: Color(0xFFFF7F00)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //focusColor: Color(0xFFFFD6B0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Enter the Price ',
                    labelText: 'Price'
                ),
              ),
            ),

//            Container(
//              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
//              child: TextFormField(
//                inputFormatters: <TextInputFormatter>[
//                  WhitelistingTextInputFormatter.digitsOnly
//                ],
//                keyboardType: TextInputType.number,
//                validator: (value) {
//                  if (value.isEmpty ) {
//                    return "PLESE ENTER VALUE";
//                  }
//                  return null;
//                },
//                decoration: InputDecoration(
//
//                    hintText: 'The amount of stalk available for sale ',
//                    labelText: 'Stalk'
//                ),
//              ),
//            ),
            Container(
              ///pin code
              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
              child: TextFormField(
                onChanged: (value){
                  stock=value;
                },
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty ) {
                    return "PLESE ENTER VALUE";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(color: Color(0xFFFF7F00)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //focusColor: Color(0xFFFFD6B0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Stock Availabe ',
                    labelText: 'Stock'
                ),
              ),
            ),
            Container(
              ///pin code
              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
              child: TextFormField(
                onChanged: (value){
                  description=value;
                },
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty ) {
                    return "PLESE ENTER VALUE";
                  }
                  return null;
                },
                decoration: InputDecoration(

                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(color: Color(0xFFFF7F00)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //focusColor: Color(0xFFFFD6B0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Description about the Product',
                    labelText: 'Description'
                ),
              ),
            ),

//            Container(
//              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
//              child: TextFormField(
//               validator: (value) {
//                  if (value.isEmpty || value.length < 5) {
//                    return "PLESE ENTER VALUE";
//                  }
//                  return null;
//                },
//                decoration: InputDecoration(
//
//                    hintText: 'Description of the product',
//                    labelText: 'Description'
//                ),
//              ),
//            ),

            RoundedButton(colour: Colors.redAccent,title:'Submit',onpressed: (){

              if(_formKey.currentState.validate()){
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('form success fully validated')));
              }else{
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('Couldn\'t Validate Check for Some Mistake!' )));
              }
            })
          ],
        ),
      ),
    );
  }
}
